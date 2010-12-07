# From https://rails.lighthouseapp.com/projects/8994/tickets/4346

# Would prefer to do this in a module and include it into AR::B
# but, alas, it's methods on B that we need to redefine.
require 'active_record/base'

module ActiveRecord
  class Base
    def execute_callstack_for_multiparameter_attributes(callstack)
      errors = []
      callstack.each do |name, values_with_empty_parameters|
        begin
          send(name + "=", read_value_from_parameter(name, values_with_empty_parameters))
        rescue => ex
          errors << AttributeAssignmentError.new("error on assignment #{values_with_empty_parameters.values.inspect} to #{name}", ex, name)
        end
      end
      unless errors.empty?
        raise MultiparameterAssignmentErrors.new(errors), "#{errors.size} error(s) on assignment of multiparameter attributes"
      end
    end

    def read_value_from_parameter(name, values_hash_from_param)
      klass = (self.class.reflect_on_aggregation(name.to_sym) || column_for_attribute(name)).klass
      if values_hash_from_param.values.all?{|v|v.nil?}
        nil
      elsif klass == Time
        read_time_parameter_value(name, values_hash_from_param)
      elsif klass == Date
        read_date_parameter_value(name, values_hash_from_param)
      else
        read_other_parameter_value(klass, name, values_hash_from_param)
      end
    end

    def read_time_parameter_value(name, values_hash_from_param)
      # NOTE: Augmented from original patch to not deamnd the date bits
      # # If Date bits were not provided, error
      # raise "Missing Parameter" if [1,2,3].any?{|position| !values_hash_from_param.has_key?(position)}
      max_position = extract_max_param_for_multiparameter_attributes(values_hash_from_param, 6)
      set_values = (1..max_position).collect{|position| values_hash_from_param[position] }
      # If Date bits were provided but blank, then default to 1
      # If Time bits are not there, then default to 0
      [1,1,1,0,0,0].each_with_index{|v,i| set_values[i] = set_values[i].blank? ? v : set_values[i]}
      instantiate_time_object(name, set_values)
    end

    def read_date_parameter_value(name, values_hash_from_param)
      set_values = (1..3).collect{|position| values_hash_from_param[position].blank? ? 1 : values_hash_from_param[position]}
      begin
        Date.new(*set_values)
      rescue ArgumentError => ex # if Date.new raises an exception on an invalid date
        instantiate_time_object(name, set_values).to_date # we instantiate Time object and convert it back to a date thus using Time's logic in handling invalid dates
      end
    end

    def read_other_parameter_value(klass, name, values_hash_from_param)
      max_position = extract_max_param_for_multiparameter_attributes(values_hash_from_param)
      values = (1..max_position).collect do |position|
        raise "Missing Parameter" if !values_hash_from_param.has_key?(position)
        values_hash_from_param[position]
      end
      klass.new(*values)
    end

    def extract_max_param_for_multiparameter_attributes(values_hash_from_param, upper_cap = 100)
      [values_hash_from_param.keys.max,upper_cap].min
    end

    def extract_callstack_for_multiparameter_attributes(pairs)
      attributes = { }

      for pair in pairs
        multiparameter_name, value = pair
        attribute_name = multiparameter_name.split("(").first
        attributes[attribute_name] = {} unless attributes.include?(attribute_name)

        parameter_value = value.empty? ? nil : type_cast_attribute_value(multiparameter_name, value)
        attributes[attribute_name][find_parameter_position(multiparameter_name)] ||= parameter_value
      end

      attributes
    end

    def find_parameter_position(multiparameter_name)
      multiparameter_name.scan(/\(([0-9]*).*\)/).first.first.to_i
    end
  end
end
class Toilet < ActiveRecord::Base
  validates_presence_of :name, :address
  acts_as_mappable :default_units => :kms, :lat_column_name => :lat, :lng_column_name => :long

  has_permalink :name

  def to_param
    permalink
  end

end

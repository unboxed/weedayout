class Toilet < ActiveRecord::Base
  validates_presence_of :name, :address
  validate :opening_and_closing_times_cant_be_the_same
  acts_as_mappable :default_units => :kms, :lat_column_name => :lat, :lng_column_name => :long

  has_permalink :name

  def has_times?
    !(opening_time.blank? && closing_time.blank?)
  end

  def to_param
    permalink
  end

  protected
  def opening_and_closing_times_cant_be_the_same
    if opening_time && closing_time
      errors.add(:base, 'The opening and closing times must be different') if opening_time == closing_time
    end
  end
end

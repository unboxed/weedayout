class Toilet < ActiveRecord::Base
  validates_presence_of :name, :address, :long, :lat
end

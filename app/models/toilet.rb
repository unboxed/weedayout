class Toilet < ActiveRecord::Base
  validates_presence_of :name, :address, :long, :lat, :venuetype, :howtoaccess, :changingbench, :hoist, :toiletlocation, :whocanuse
end

class AddTestData < ActiveRecord::Migration
  def self.up
    Toilet.delete_all
    Toilet.create(
            :name => 'South Lanarkshire Lifestyles Community Leisure Centre',
            :address => ' Glenside Drive Eastfield Rutherglen, G73 3LH',
            :venuetype => 'Community Leisure Centre',
            :howtoaccess => 'Ask at reception and they will take you to it',
            :changingbench => 'Height adjustable and adult sized',
            :hoist => 'Ceiling track',
            :toiletlocation => 'Centrally placed toilet with room either side for the carers',
            :whocanuse  => 'Anyone who is in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    
    Toilet.create(
            :name => 'The Play Drome',
            :address =>  '2 Abbotsford Road Clydebank Glasgow, G81 1PA',
            :venuetype => 'A large Leisure Centre with a Leisure pool, 25m pool, Squash, Sports hall, Indoor bowling, Skatepark, Health and Fitness Club and Exercise Studio',
            :howtoaccess => 'The toilet is locked and customers can ask for the key at reception',
            :changingbench => 'Height adjustable, wall mounted, adult sized',
            :hoist => 'Mobile',
            :toiletlocation => 'Centrally placed toilet with room either side for the carers',
            :whocanuse  => 'Paying customers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )

    Toilet.create(
            :name => 'The Murray Owen Centre',
            :address =>  ' 1 Liddell Grove The Murray East Kilbride, G75 9AD',
            :venuetype => 'During the day it is a day centre for people with learning disabilities. In the evening and at weekends rooms can be hired out for activities or functions, for example community keep fit classes or weddings',
            :howtoaccess => 'It is unlocked. The Changing Places toilet is on the ground floor and you can ask at reception for directions',
            :changingbench => 'Free standing, height adjustable and adult sized',
            :hoist => 'Ceiling track',
            :toiletlocation => 'Centrally placed toilet with room either side for the carers',
            :whocanuse  => 'Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    
  end

  def self.down
    Toilet.delete_all
  end
end

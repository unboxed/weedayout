class AddTestData < ActiveRecord::Migration
  def self.up
    Toilet.delete_all
    #Toilet.create(
    #        :name => 'South Lanarkshire Lifestyles Community Leisure Centre',
    #        :address => ' Glenside Drive Eastfield Rutherglen, G73 3LH',
    #        :venuetype => 'Community Leisure Centre',
    #        :howtoaccess => 'Ask at reception and they will take you to it',
    #        :changingbench => 'Height adjustable and adult sized',
    #        :hoist => 'Ceiling track',
    #        :toiletlocation => 'Centrally placed toilet with room either side for the carers',
    #        :whocanuse  => 'Anyone who is in the area who needs to',
    #        :long => '-4.265012741088867',
    #        :lat => '55.866450104840006'
    #)
    #
    #Toilet.create(
    #        :name => 'The Play Drome',
    #        :address =>  '2 Abbotsford Road Clydebank Glasgow, G81 1PA',
    #        :venuetype => 'A large Leisure Centre with a Leisure pool, 25m pool, Squash, Sports hall, Indoor bowling, Skatepark, Health and Fitness Club and Exercise Studio',
    #        :howtoaccess => 'The toilet is locked and customers can ask for the key at reception',
    #        :changingbench => 'Height adjustable, wall mounted, adult sized',
    #        :hoist => 'Mobile',
    #        :toiletlocation => 'Centrally placed toilet with room either side for the carers',
    #        :whocanuse  => 'Paying customers',
    #        :long => '-4.265012741088867',
    #        :lat => '55.866450104840006'
    #)
    #
    #Toilet.create(
    #        :name => 'The Murray Owen Centre',
    #        :address =>  ' 1 Liddell Grove The Murray East Kilbride, G75 9AD',
    #        :venuetype => 'During the day it is a day centre for people with learning disabilities. In the evening and at weekends rooms can be hired out for activities or functions, for example community keep fit classes or weddings',
    #        :howtoaccess => 'It is unlocked. The Changing Places toilet is on the ground floor and you can ask at reception for directions',
    #        :changingbench => 'Free standing, height adjustable and adult sized',
    #        :hoist => 'Ceiling track',
    #        :toiletlocation => 'Centrally placed toilet with room either side for the carers',
    #        :whocanuse  => 'Anyone in the area who needs to',
    #        :long => '-4.265012741088867',
    #        :lat => '55.866450104840006'
    #)

    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/243/ctl.aspx
    Toilet.create(
            :name =>'Acomb Library Explore Centre',
            :address =>'Front Street AcombYork, YO24 3BZ',
            #:phone =>'',
            :venuetype =>' Library',
            :howtoaccess =>' Changing Places toilet is open during library opening hours.',
            :changingbench =>' height adjustable, free standing',
            :hoist =>' Westholme ceiling track hoist',
            :toiletlocation =>' Peninsular toilet',
            :whocanuse =>'Anyone in the area who would like to use it',
            :long => '-1.1281880',
            :lat => '53.9543170'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/211/ctl.aspx
    Toilet.create(
            :name =>'Acton and West London College',
            :address =>'Gunnersbury Lane ActonLondon, W3 8EA',
            #:phone =>'',
            :venuetype =>' College',
            :howtoaccess =>'The toilet is kept locked and can be accessed with a key available from reception',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>' Adult sized, height adjustable bench, free standing (needs to be unfolded before use)',
            :whocanuse =>'<strong>Hoist:</strong> Mobile hoist',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/231/ctl.aspx
    Toilet.create(
            :name =>'Barnsley Town Hall',
            :address =>'Church Street BarnsleySouth Yorkshire, S70 1QX',
            #:phone =>'',
            :venuetype =>' Local Authority Town Hall',
            :howtoaccess =>' Toilet is unlocked. It is on the ground floor.',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track (Westholme Transactive)',
            :whocanuse =>'<strong>Toilet:</strong> Centrally placed toilet with room either side for the carers',
            :long => '-1.4821620',
            :lat => '53.5551440'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/272/ctl.aspx
    Toilet.create(
            :name =>'Bluewater Shopping Centre',
            :address =>'BluewaterKent, DA9 9ST',
            #:phone =>'',
            :venuetype =>' Shopping Centre',
            :howtoaccess =>'Key is available from the concierge desk in the centre',
            :changingbench =>' Mistral Hydraulic height adjustable change table 200kgs/32st weigh capacity',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '0.2700660',
            :lat => '51.4393450'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/218/ctl.aspx
    Toilet.create(
            :name =>'Bowling Pool',
            :address =>'Flockton Road East BowlingBradford, BD4 7RH',
            #:phone =>'',
            :venuetype =>' Swimming Pool',
            :howtoaccess =>'Key available at Reception',
            :changingbench =>' Heigh adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-1.7369347',
            :lat => '53.7793817'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/203/ctl.aspx
    Toilet.create(
            :name =>'Bradford Central Library',
            :address =>'Prince\'s WayBradford, BD1 1NN',
            #:phone =>'',
            :venuetype =>' Library',
            :howtoaccess =>'The entrance to the toilet is locked. Visitors wanting to use the toilet need to ask someone at the main desk to unlock the entrance',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-1.7551925',
            :lat => '53.7911053'
    )
# http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/227/ctl.aspx
    Toilet.create(
            :name =>'Briar Way Public Conveniences',
            :address =>'Briar WaySkegness, PE25 3NR',
            #:phone =>'',
            :venuetype =>'&#160;Hildreds Shopping Centre',
            :howtoaccess =>' Public Convenience',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/224/ctl.aspx
    Toilet.create(
            :name =>'Carlisle Business Centre',
            :address =>'60 Carlisle RoadBradford, BD8 8BD',
            #:phone =>'',
            :venuetype =>' Conference Centre',
            :howtoaccess =>'Radar key available from Reception',
            :changingbench =>'',
            :hoist =>' Height adjustable and adult sized',
            :toiletlocation =>' Mobile',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/297/ctl.aspx
    Toilet.create(
            :name =>'Catterick Garrison',
            :address =>'Catterick RoadColburn, DL9 4QH',
            #:phone =>'01748 835660',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Who can use the toilet:',
            :long => '-1.6955028',
            :lat => '54.3768687'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/208/ctl.aspx
    Toilet.create(
            :name =>'Centre MK',
            :address =>'24 Silbury Arcade Central Milton KeynesMilton Keynes, MK9 3ES',
            #:phone =>'',
            :venuetype =>' Shopping Centre',
            :howtoaccess =>'The toilet is kept locked and can be accessed with a radar key available from customer services or see <a href="http://www.radar.org.uk/" target="_blank"><u><font color="#0000ff">www.radar.org.uk</font></u></a>',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Corner',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-0.7548480',
            :lat => '52.0447870'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/248/ctl.aspx
    Toilet.create(
            :name =>'Changing Space Walmgate',
            :address =>'Long Close Lane WalmgateYork, YO10 4UP',
            #:phone =>'',
            :venuetype =>'Stop-off facility',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<strong>Who can use the toilet:</strong> Anyone in the area who would like to use it',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/264/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/256/ctl.aspx
    Toilet.create(
            :name =>'Chowdene Children\'s Centre',
            :address =>'Waverley RoadGateshead, NE9 7TU',
            #:phone =>'',
            :venuetype =>'Children\'s Centre',
            :howtoaccess =>'The toilet is locked. Key is available from reception. There is attendant. Located on ground floor, part of suite of toilets',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track hoist ‚Äì XY Hoist',
            :toiletlocation =>' Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it. They‚Äôll need to become a member the first time they use it (but it should only take few minutes to register).',
            :long => '-1.5885170',
            :lat => '54.9200700'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/269/ctl.aspx
    Toilet.create(
            :name =>'City Hall',
            :address =>'The Queen\'s Walk More LondonLondon, SE1 2AA',
            #:phone =>'',
            :venuetype =>' Local Government Office',
            :howtoaccess =>'Toilet is on the ground floor public area. <br />
The door is open when not in use',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Chiltern ceiling track hoist',
            :toiletlocation =>'Centrally place toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>All visitors and staff',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/223/ctl.aspx
    Toilet.create(
            :name =>'Community Centre',
            :address =>'140 Balaam Street PlaistowLondon, E13 8RD',
            #:phone =>'',
            :venuetype =>' Community Centre',
            :howtoaccess =>'Toilet is not locked',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track and mobile',
            :toiletlocation =>'Corner toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/210/ctl.aspx
    Toilet.create(
            :name =>'Connect(Wyre Forest)',
            :address =>'10-12 Blackwell Street KidderminsterWorcestershire, DY10 2DP',
            #:phone =>'',
            :venuetype =>'Worcestershire County Council, Adult and Community Services',
            :howtoaccess =>' Worcestershire County Council service, which provides information and advice in relation to disability and sensory impairment, to individuals and to the Wyre Forest community',
            :changingbench =>' 10.30 - 4pm weekdays. After these hours and at weekends (24 hours per day) access can be gained by use of an entry key (see above)',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-2.2474671',
            :lat => '52.3890800'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/232/ctl.aspx
    Toilet.create(
            :name =>'Crescent Resource Centre',
            :address =>'Cocks Crescent New MaldenSurrey, KT3 4TA',
            #:phone =>'',
            :venuetype =>' Resource Centre',
            :howtoaccess =>' Ask at reception',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet:</strong> Centrally placed toilet with room either side for the carers',
            :long => '-0.2544874',
            :lat => '51.4001028'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/296/ctl.aspx
    Toilet.create(
            :name =>'Divis and the Black Mountain',
            :address =>'Divis RoadBelfast, BT17 0NG',
            #:phone =>'02890 825434',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'',
            :long => '-6.0393120',
            :lat => '54.5976120'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/225/ctl.aspx
    Toilet.create(
            :name =>'Drake Circus Shopping Centre',
            :address =>'1 Charles Street PlymouthDevon, PL1 1EA',
            #:phone =>'',
            :venuetype =>' Shopping Centre',
            :howtoaccess =>'The toilet is locked on arrival. Staff will unlock the toilet on request',
            :changingbench =>' Height adjustable and adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone who is in the area who needs to',
            :long => '-4.1375800',
            :lat => '50.3728134'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/207/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/204/ctl.aspx
    Toilet.create(
            :name =>'Eccleshill Leisure Centre',
            :address =>'Harrogate RoadBradford, BD10 0QE',
            #:phone =>'',
            :venuetype =>' Leisure Centre',
            :howtoaccess =>'The toilet is situated in the main changing area called ‚Äòthe changing village‚Äô. It is locked and the key is available from reception',
            :changingbench =>' Free standing, adult sized',
            :hoist =>'',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet: </strong>Corner',
            :long => '-1.7152265',
            :lat => '53.8270546'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/219/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/259/ctl.aspx
    Toilet.create(
            :name =>'Freeman\'s Quay Leisure Centre, Freeman\'s Quay',
            :address =>'WalkergateDurham, DH1 1SW',
            #:phone =>'',
            :venuetype =>'Leisure Centre',
            :howtoaccess =>'The toilet is locked. There is an attendant. Located on ground floor. Five free disabled parking spaces at Freeman‚Äôs Quay',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling Track Hoist - Westholme ‚Äì Universal with head support',
            :toiletlocation =>' Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it',
            :long => '-1.5760684',
            :lat => '54.7776356'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/258/ctl.aspx
    Toilet.create(
            :name =>'Gateshead @ Leam Lane',
            :address =>'Gateshead Council 129 CotemedeGateshead, NE10 8QH',
            #:phone =>'',
            :venuetype =>'Library, Community Centre, Housing Office, Children‚Äôs Centre',
            :howtoaccess =>'The toilet is locked. Key is available from reception. There is attendant. Located on ground floor adjacent to other toilets. part of suite of toilets.',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track hoist ‚Äì Chiltern Invadex Wispa 300 XY Hoist',
            :toiletlocation =>' Corner toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it. They‚Äôll need to become a member the first time they use it (but it should only take few minutes to register).',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/254/ctl.aspx
    Toilet.create(
            :name =>'Gateshead Central Library and Caedmon Hall',
            :address =>'Gateshead Central Library Prince Consort RoadGateshead, NE8 4LN',
            #:phone =>'',
            :venuetype =>'Library and Theatre',
            :howtoaccess =>'There is attendant - key available from reception. Located on first floor adjacent to accessible wc behind Caedmon Hall',
            :changingbench =>' Height adjustable, free standing, adult sized, wall mounted',
            :hoist =>' Ceiling track hoist ‚Äì Chiltern Invadex Wispa 300 XY Hoist',
            :toiletlocation =>' Corner toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it. They‚Äôll need to become a member the first time they use it (but it should only take few minutes to register).',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/257/ctl.aspx
    Toilet.create(
            :name =>'Gateshead Civic Centre',
            :address =>'Gateshead Council Civic Centre, Regent StreetGateshead, NE8 1HH',
            #:phone =>'',
            :venuetype =>'Civic Centre',
            :howtoaccess =>'The toilet is locked. Key is available from reception. There is attendant. Located on ground floor adjacent to other toilets. Near to restaurant and bar area.',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track hoist ‚Äì Chiltern Invadex Wispa 300 Hoist',
            :toiletlocation =>' Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it. They‚Äôll need to become a member the first time they use it (but it should only take few minutes to register).',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/222/ctl.aspx
    Toilet.create(
            :name =>'Grays Community Resource Centre',
            :address =>'13-15 Clarence Road GraysThurrock, RM17 6QJ',
            #:phone =>'',
            :venuetype =>' One of several buildings located around the borough from where disabled people can receive support to enjoy a range of ordinary community activities',
            :howtoaccess =>'Toilet is not locked',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '0.3239288',
            :lat => '51.4778073'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/206/ctl.aspx
    Toilet.create(
            :name =>'Greyhound Street',
            :address =>'Greyhound Street Market SquareNottingham, NG1 2DP',
            #:phone =>'',
            :venuetype =>' Public toilets',
            :howtoaccess =>'The toilet is kept locked and can be accessed by asking the attendant.',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/298/ctl.aspx
    Toilet.create(
            :name =>'Halewood Centre One Stop Shop',
            :address =>'Roseheath DriveKnowsley, L26 9UH',
            #:phone =>'0151 489 6000',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation => '',
            :long => '-2.8273964',
            :lat => '53.3589563'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/263/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/238/ctl.aspx
    Toilet.create(
            :name =>'Hereford leisure pool',
            :address =>'St Martin\'s Avenue HerefordHerefordshire, HR2 7RQ',
            #:phone =>'',
            :venuetype =>' Public swimming pool and leisure centre',
            :howtoaccess =>'Not locked',
            :changingbench =>' From October to Easter the venue closes at 4.30pm on Saturday and Sunday',
            :hoist =>' Height adjustable, wall mounted, adult sized',
            :toiletlocation =>' Ceiling track ‚Äì Guldmann 250 Kg max (550lbs)',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-2.7175310',
            :lat => '52.0506790'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/253/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/241/ctl.aspx
    Toilet.create(
            :name =>'Hull - Goodwin Centre, The Hooper Building',
            :address =>'Guildhall RoadHull, HU1 1HL',
            #:phone =>'',
            :venuetype =>' Health and Social Care community centre',
            :howtoaccess =>'toilet is unlocked during opening hours',
            :changingbench =>' Free standing height adjustable.',
            :hoist =>' Oxford Midi Hydraulic hoist (mobile)',
            :toiletlocation =>'Peninsular toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it',
            :long => '-0.3355466',
            :lat => '53.7445194'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/299/ctl.aspx
    Toilet.create(
            :name =>'Huyton Municipal Buildings One Stop Shop',
            :address =>'Archway RoadKnowsley, L36 9YU',
            #:phone =>'0151 489 6000',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Monday to Friday: 09.00',
            :long => '-2.8429170',
            :lat => '53.4116355'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/230/ctl.aspx
    Toilet.create(
            :name =>'Ilkley Pool Lido',
            :address =>'Denton Road IlkleyWest Yorkshire, LS29 0BZ',
            #:phone =>'',
            :venuetype =>' Swimming Pool',
            :howtoaccess =>'Key available at Reception',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track (Transactive Hoist, Max Load 130Kgs)',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-1.8023580',
            :lat => '53.9237550'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/213/ctl.aspx
    Toilet.create(
            :name =>'Keighley Leisure Centre',
            :address =>'Lawkholme Lane KeighleyBradford, BD21 3JN',
            #:phone =>'',
            :venuetype =>' Leisure Centre',
            :howtoaccess =>'Toilet is not locked. Users will need to travel through reception to get to the facility',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Mobile and ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-1.9045160',
            :lat => '53.8711040'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/245/ctl.aspx
    Toilet.create(
            :name =>'Ken Martin Leisure Centre',
            :address =>'Hucknall Lane BulwellNottingham, NG6 8AP',
            #:phone =>'',
            :venuetype =>' Leisure Centre',
            :howtoaccess =>'Key available at reception',
            :changingbench =>' Height-adjustable, adult sized, free-standing',
            :hoist =>' H-frame ceiling track hoist',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to use it',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/300/ctl.aspx
    Toilet.create(
            :name =>'Knaresborough Swimming Pool',
            :address =>'King James RoadKnaresborough, HG5 8EB',
            #:phone =>'01423 860011',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Swimming Pool',
            :long => '-1.4613115',
            :lat => '54.0058271'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/273/ctl.aspx
    Toilet.create(
            :name =>'Lady Place Car Park',
            :address =>'AltonHampshire, GU34 1EN',
            #:phone =>'',
            :venuetype =>' town centre car park',
            :howtoaccess =>'Toilet is on the ground floor and is accessible by RADAR Key.',
            :changingbench =>' Mistral Hydraulic height adjustable change table 200kgs/32st weigh capacity',
            :hoist =>' Liftech Systems Limited ceiling track hoist',
            :toiletlocation =>'Clos-o-Mat automatic',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it',
            :long => '-0.9690916',
            :lat => '51.1022771'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/295/ctl.aspx
    Toilet.create(
            :name =>'LC Leisure Centre',
            :address =>'Oystermouth RoadSwansea, SA1 3ST',
            #:phone =>'01792 466500',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Monday to Friday: 6.30 am to 10.00pm',
            :long => '-3.9506007',
            :lat => '51.6143510'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/237/ctl.aspx
    Toilet.create(
            :name =>'Leominster leisure centre',
            :address =>'Coningsby Road LeominsterHerefordshire, HR6 8LL',
            #:phone =>'',
            :venuetype =>' Public swimming pool and leisure centre',
            :howtoaccess =>'Not locked',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track ‚Äì Guldmann 250 Kg max (550lbs)',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to. Please phone ahead if possible on T: 0845 2412 540',
            :long => '-2.7379630',
            :lat => '52.2240750'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/242/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/267/ctl.aspx
    Toilet.create(
            :name =>'Liverpool One Centre',
            :address =>'Wall StreetLiverpool, L1 8JQ',
            #:phone =>'',
            :venuetype =>' Shopping, leisure cultural centre',
            :howtoaccess =>'Toilet is on the ground floor close to t he information centre. RADAR Key is available from the Information centre',
            :changingbench =>' Pressalit - height adjustable, wall-mounted bench.',
            :hoist =>' Chiltern Invadex',
            :toiletlocation =>'Peninsular toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who would like to use it',
            :long => '-0.0843540',
            :lat => '51.5452558'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/209/ctl.aspx
    Toilet.create(
            :name =>'Magnet Leisure Centre',
            :address =>'Holmanleaze MaidenheadBerks, SL6 8AW',
            #:phone =>'',
            :venuetype =>' Leisure Centre',
            :howtoaccess =>'Not locked',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Corner',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-0.7171530',
            :lat => '51.5258110'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/262/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/196/ctl.aspx
    Toilet.create(
            :name =>'MetroCentre',
            :address =>'Gateshead Tyne & WearNewcastle Upon Tyne, NE11 9YG',
            #:phone =>'0207 123 4567',
            :venuetype =>'Shopping Centre',
            :howtoaccess =>'through membership scheme',
            :changingbench =>'Height adjustable, free standing, adult sized',
            :hoist =>'Ceiling track',
            :toiletlocation =>'Peninsular toilet (Clos o Mat Lima lift)',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Toilet is operated on a free of charge membership scheme from the Red Mall Customer Services desk. The toilet also has a camera controlled entrance, where the membership number is required for entrance.',
            :long => '-1.6018252',
            :lat => '54.9593729'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/252/ctl.aspx
    Toilet.create(
            :name =>'Mind the Gap Studios',
            :address =>'Queensbury Silk Warehouse, Patent StreetBradford, BD9 4SA',
            #:phone =>'01274 487390 ',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<span style="font-weight: bold">Toilet: </span>Centrally placed toilet with room either side for the carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/249/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/233/ctl.aspx
    Toilet.create(
            :name =>'Nantwich Market',
            :address =>'Monks Lane Churchyardside, NantwichCheshire, CW5 5DE',
            #:phone =>'',
            :venuetype =>' Market Hall',
            :howtoaccess =>' With a radar Key. It is int he toilet block next to Market Hall in the town centre (the town square is 300 yards away)',
            :changingbench =>'',
            :hoist =>' Height adjustable, wall mounted, adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet:</strong> Centrally placed toilet with room either side for the carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/201/ctl.aspx
    Toilet.create(
            :name =>'National Assembly for Wales',
            :address =>'National Assembly for WalesCardiff, CF99 1NA',
            #:phone =>'',
            :venuetype =>' National Assembly building for Wales',
            :howtoaccess =>' Not locked',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>' Height adjustable, wall mounted, adult sized',
            :whocanuse =>'<strong> Hoist:</strong> Mobile',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/265/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/250/ctl.aspx
    Toilet.create(
            :name =>'Nuneaton, Warwickshire',
            :address =>'23e Abbey St NuneatonWarwickshire, CV11 5BX',
            #:phone =>'01926 410410',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<span style="font-weight: bold">Who can use the toilet:</span> Anyone in the area who would like to use it',
            :long => '-1.4713228',
            :lat => '52.5241581'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/246/ctl.aspx
    Toilet.create(
            :name =>'Ormskirk Bus/Rail Interchange',
            :address =>'61 Westgate OrmskirkLancashire, L39 2DF',
            #:phone =>'',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<span style="font-weight: bold">Who can use the toilet:</span> It is open to all',
            :long => '-2.8046134',
            :lat => '53.5482367'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/197/ctl.aspx
    Toilet.create(
            :name =>'PAMIS',
            :address =>'Springfield House, 15/16 Springfield University of DundeeDundee, DD1 4JE',
            #:phone =>'',
            :venuetype =>'University',
            :howtoaccess =>'Ring the bell at the back door in Dow Street. There is a fully accessible entrance and disabled parking',
            :changingbench =>'Height adjustable, wall mounted, adult sized',
            :hoist =>'Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong> Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/215/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/286/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/228/ctl.aspx
    Toilet.create(
            :name =>'Poulton United Reformed Church',
            :address =>'Tithebarn Street Corner of Chester Avenue, Poulton-le-FyldeLancs, FY6 7BX',
            #:phone =>'',
            :venuetype =>' Church',
            :howtoaccess =>'With a Radar key',
            :changingbench =>' Heigh adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Corner toilet',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/260/ctl.aspx
    Toilet.create(
            :name =>'Preston North End Football Club',
            :address =>'Deepdale Road DeepdalePreston, PR1 6RU',
            #:phone =>'0870 442 1964',
            :venuetype =>'Football Stadium',
            :howtoaccess =>'It is not locked. It is located on the first floor concourse area',
            :changingbench =>' Height adjustable, adult sized',
            :hoist =>' Mobile Hoist - Freeway Hydraulic 175<strong>&#160;',
            :toiletlocation =>' Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone using the stadium',
            :long => '-2.6913300',
            :lat => '53.7687500'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/239/ctl.aspx
    Toilet.create(
            :name =>'Royal Hallamshire Hospital',
            :address =>'Royal Hallamshire HospitalSheffield, S10 2JF',
            #:phone =>'',
            :venuetype =>' Hospital',
            :howtoaccess =>'Radar key. A radar key is available on request from reception.',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track - Ario hoist',
            :toiletlocation =>'Peninsular toilet (Clos o Mat Lima lift)',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Changing Places toilet is on Floor B and is available to anyone in the area who needs to use it.',
            :long => '-1.4924300',
            :lat => '53.3775600'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/278/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/214/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/268/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/200/ctl.aspx
    Toilet.create(
            :name =>'South Lanarkshire Lifestyles Community Leisure Centre',
            :address =>'Glenside Drive EastfieldRutherglen, G73 3LH',
            #:phone =>'',
            :venuetype =>' Community Leisure Centre',
            :howtoaccess =>'Ask at reception and they will take you to it',
            :changingbench =>'',
            :hoist =>' Height adjustable and adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/270/ctl.aspx
    Toilet.create(
            :name =>'Southwark College',
            :address =>'Keeton\'s Road BermondseyLondon, SE16 4EE',
            #:phone =>'',
            :venuetype =>' FE College',
            :howtoaccess =>'Toilet is on the ground floor in the Ada Salter Building - RADAR Key is available from college security',
            :changingbench =>' Height adjustable, wall-mounted',
            :hoist =>' Guldmann ceiling track hoist.',
            :toiletlocation =>' Peninsular toilet',
            :whocanuse =>'<strong>Who can use the toilet:</strong> Anyone in the area who would like to use it',
            :long => '-0.0631444',
            :lat => '51.4971232'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/221/ctl.aspx
    Toilet.create(
            :name =>'Stanford Base',
            :address =>'The Sorrells Stanford-Le-HopeEssex, SS17 7ES',
            #:phone =>'01375 675769',
            :venuetype =>' One of several buildings located around the boroguh from where disabled people can receive support to enjoy a range of ordinary community activities',
            :howtoaccess =>'Toilet is not locked',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/240/ctl.aspx
    Toilet.create(
            :name =>'Swansea - Civic Centre',
            :address =>'Oystermouth RdSwansea, SA1 3SN',
            #:phone =>'',
            :venuetype =>'',
            :howtoaccess =>' Civic Centre',
            :changingbench =>' The toilet is available during venue opening hours:',
            :hoist =>'',
            :toiletlocation =>' Height adjustable, wall mounted',
            :whocanuse =>'<strong>Hoist:</strong> Viking Aluminium Hoist (capacity 205kg) manufactured by Liko',
            :long => '-3.9506007',
            :lat => '51.6143510'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/235/ctl.aspx
    Toilet.create(
            :name =>'Tate Modern',
            :address =>'BanksideLondon, SE1 9TG',
            #:phone =>'',
            :venuetype =>' Art Gallery',
            :howtoaccess =>'Key is available from the cloakroom next to the toilet. The toilet has an attendant',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track (ARJO MAXI)',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-0.0903247',
            :lat => '51.4910088'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/255/ctl.aspx
    Toilet.create(
            :name =>'Teams and Children\'s Centre',
            :address =>'Rose StreetGateshead, NE8 2PN',
            #:phone =>'0191 433 3000',
            :venuetype =>'',
            :howtoaccess =>'Children‚Äôs Centre',
            :changingbench =>'Monday to Friday: 9.00am to 5.00pm',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track hoist - Chiltern Invadex Wispa 300 XY Hoist',
            :whocanuse =>'<strong>Toilet:</strong> Centrally placed toilet with room either side for the carers',
            :long => '-1.6229670',
            :lat => '54.9582200'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/261/ctl.aspx
    Toilet.create(
            :name =>'The Camden Society',
            :address =>'60 Holmes RoadLondon, NW5 3AQ',
            #:phone =>'0115 915 1555',
            :venuetype =>' Employment and Learning Centre for people with learning disabilities and a Training Centre',
            :howtoaccess =>'The Changing Places toilet is open to everyone, but visitors must sign in at reception first',
            :changingbench =>' height-adjustable, adult sized, free-standing',
            :hoist =>' Ceiling track hoist - Chiltern Inverdex',
            :toiletlocation =>'Centrally placed toilet with room either for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to use it',
            :long => '-0.1433143',
            :lat => '51.5496465'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/271/ctl.aspx
    Toilet.create(
            :name =>'The Causeway Centre',
            :address =>'Cocks CrescentSurrey, KT3 3TA',
            #:phone =>'',
            :venuetype =>' Resource centre',
            :howtoaccess =>' Ask at reception',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet:</strong> Corner toilet',
            :long => '-0.2544874',
            :lat => '51.4001028'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/301/ctl.aspx
    Toilet.create(
            :name =>'The Colonnade',
            :address =>'Madeira DriveBrighton, BN2 1EN',
            #:phone =>'',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Good Friday to 30 September: 8.am to 8.00pm',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/302/ctl.aspx
    Toilet.create(
            :name =>'The Colonnade',
            :address =>'Madeira DriveBrighton, BN2 1EN',
            #:phone =>'',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'Good Friday to 30 September: 8.am to 8.00pm',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/198/ctl.aspx
    Toilet.create(
            :name =>'The Murray Owen Centre',
            :address =>'1 Liddell Grove The MurrayEast Kilbride, G75 9AD',
            #:phone =>'',
            :venuetype =>'During the day it is a day centre for people with learning disabilities. In the evening and at weekends rooms can be hired out for activities or functions, for example community keep fit classes or weddings',
            :howtoaccess =>'It is unlocked. The Changing Places toilet is on the ground floor and you can ask at reception for directions',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'Free standing, height adjustable and adult sized',
            :whocanuse =>'<strong>Hoist:</strong>Ceiling track',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/199/ctl.aspx
    Toilet.create(
            :name =>'The Play Drome',
            :address =>'2 Abbotsford Road ClydebankGlasgow, G81 1PA',
            #:phone =>'',
            :venuetype =>' A large Leisure Centre with a Leisure pool, 25m pool, Squash, Sports hall, Indoor bowling, Skatepark, Health and Fitness Club and Exercise Studio',
            :howtoaccess =>'The toilet is locked and customers can ask for the key at reception',
            :changingbench =>'',
            :hoist =>' Height adjustable, wall mounted, adult sized',
            :toiletlocation =>' Mobile',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-4.4025317',
            :lat => '55.9012042'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/202/ctl.aspx
    Toilet.create(
            :name =>'The Sage Gateshead',
            :address =>'St Mary\'s Square Gateshead QuaysGateshead, NE8 2JR',
            #:phone =>'',
            :venuetype =>' Arts Centre',
            :howtoaccess =>'Not locked',
            :changingbench =>' Height adjustable, wall mounted',
            :hoist =>'',
            :toiletlocation =>' Ceiling track',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/205/ctl.aspx
    Toilet.create(
            :name =>'The Trafford Centre',
            :address =>'Barton Dock RoadManchester, M17 8AA',
            #:phone =>'',
            :venuetype =>' Shopping Centre',
            :howtoaccess =>'The toilet is kept locked and customers can ask for the key at the Customer Service Desks',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-2.3303678',
            :lat => '53.4610370'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/229/ctl.aspx
    Toilet.create(
            :name =>'Thornton Recreation Centre',
            :address =>'Leaventhorpe Lane ThorntonBradford, BD13 3BH',
            #:phone =>'',
            :venuetype =>' Sports and Fitness Centre',
            :howtoaccess =>'Key available at Reception',
            :changingbench =>'',
            :hoist =>' Height adjustable, free standing, adult sized',
            :toiletlocation =>' Ceiling track (Westholme Transactive)',
            :whocanuse =>'<strong>Toilet: </strong>Centrally placed toilet with room either side for the carers',
            :long => '-1.8145707',
            :lat => '53.7921035'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/217/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/234/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/236/ctl.aspx
    Toilet.create(
            :name =>'Victoria Embankment Gardens',
            :address =>'Villiers StreetLondon, WC2N',
            #:phone =>'',
            :venuetype =>' Public toilet block',
            :howtoaccess =>'With a radar key',
            :changingbench =>' Height adjustable, wall mounted, adult sized changing bench',
            :hoist =>' Ceiling track (Chiltern Invadex)',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong> Who can use the toilet: </strong> Anyone in the area who needs to',
            :long => '-0.1236371',
            :lat => '51.5079939'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/220/ctl.aspx
    Toilet.create(
            :name =>'Walton Hall Gardens',
            :address =>'Walton Lea Road Walton, WarringtonCheshire, WA4 6SN',
            #:phone =>'',
            :venuetype =>' Park with spacious lawns, picnic areas, play area, children\'s zoo, heritage centre and outdoor games',
            :howtoaccess =>'The toilet is situated in the main changing area called ‚Äòthe changing village‚Äô. It is locked and the key is available from reception',
            :changingbench =>' Height adjustable, free standing, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Corner',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-2.5994250',
            :lat => '53.3661180'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/212/ctl.aspx
    Toilet.create(
            :name =>'Warrington Bus Station',
            :address =>'Horsemarket StreetWarrington, WA1 1TS',
            #:phone =>'',
            :venuetype =>' Bus Station',
            :howtoaccess =>' The toilet is kept locked and can be accessed with a radar key (see <a href="http://www.radar.org.uk/" target="_blank">www.radar.org.uk</a> if you need to get a key)',
            :changingbench =>' Height adjustable, adult sized, wall mounted',
            :hoist =>' Ceiling track',
            :toiletlocation =>' Corner toilet',
            :whocanuse =>'<strong> Who can use the toilet: </strong> Anyone in the area who needs to',
            :long => '-2.5934717',
            :lat => '53.3897632'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/247/ctl.aspx
    Toilet.create(
            :name =>'Warwickshire County Council, Shire Hall',
            :address =>'Market PlaceWarwick, CV34 4RA',
            #:phone =>'',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<span style="font-weight: bold;">Who can use the toilet:</span> It is open to all',
            :long => '-1.5906050',
            :lat => '52.2820120'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/251/ctl.aspx
    Toilet.create(
            :name =>'Weston Favell Shopping Centre',
            :address =>'Wellingborough Road Weston FavellNorthampton, NN3 8JZ',
            #:phone =>'01604 411521',
            :venuetype =>'',
            :howtoaccess =>'',
            :changingbench =>'',
            :hoist =>'',
            :toiletlocation =>'',
            :whocanuse =>'<span style="font-weight: bold">Who can use the toilet: </span>Anyone in the area who would like to use it',
            :long => '-0.8392210',
            :lat => '52.2534910'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/266/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/226/ctl.aspx
    Toilet.create(
            :name =>'Windmill gardens',
            :address =>'Broughty Ferry BeachDundee, DD5 2EL',
            #:phone =>'',
            :venuetype =>' It is part of a public toilet complex. It is situated at the car park for the Blue Badge Broughty Ferry Beach and also gives good access to Castle Green Park, Windmill Gardens &amp; Broughty Ferry Esplanade',
            :howtoaccess =>'With a Radar key. There is no attendant but one can be contacted if required',
            :changingbench =>' Height adjustable, wall mounted, adult sized',
            :hoist =>' Ceiling track',
            :toiletlocation =>'Centrally placed toilet with suitable handles and room either side for carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to',
            :long => '-4.265012741088867',
            :lat => '55.866450104840006'
    )
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/216/ctl.aspx
    # Skipping
    # http://www.changing-places.org/find_a_toilet/location_search_results/details/mid/649/lid/244/ctl.aspx
    Toilet.create(
            :name =>'Wollaton Hall and Park',
            :address =>'Wollaton Hall and Park WollatonNottingham, NG8 2AE',
            #:phone =>'0115 9153900',
            :venuetype =>'There are many attractions at Wollaton Hall and Park including Nottingham\'s natural history museum',
            :howtoaccess =>'It is located in the stable block where the main public toilets are. The facility is locked and the key is available from the attendant at the industrial museum across the courtyard',
            :changingbench =>' Height-adjustable, adult sized, wall mounted',
            :hoist =>' H-frame, ceiling track hoist',
            :toiletlocation =>'Centrally placed toilet with room either side for the carers',
            :whocanuse =>'<strong>Who can use the toilet: </strong>Anyone in the area who needs to use it',
            :long => '-1.2106161',
            :lat => '52.9477471'
    )

  end

  def self.down
    Toilet.delete_all
  end
end

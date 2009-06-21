require 'rubygems'
require 'hpricot'
require 'open-uri'

Hpricot.buffer_size = 262144

link = 'http://www.changing-places.org/find_a_toilet/location_search_results.aspx#map'
doc = Hpricot(open(link))

seen = false

(doc/"//a[@class='Normal']").each do |link|
  puts ' # ' + link.attributes['href']

  if (
  link.attributes['href'].include?('207') ||
          link.attributes['href'].include?('219') ||
          link.attributes['href'].include?('242') ||
          link.attributes['href'].include?('262') ||
          link.attributes['href'].include?('249') ||
          link.attributes['href'].include?('265') ||
          link.attributes['href'].include?('215') ||
          link.attributes['href'].include?('286') ||
          link.attributes['href'].include?('214') ||
          link.attributes['href'].include?('216') ||
          link.attributes['href'].include?('217') ||
          link.attributes['href'].include?('234') ||
          link.attributes['href'].include?('268') ||
          link.attributes['href'].include?('266') ||
          link.attributes['href'].include?('278') ||
          link.attributes['href'].include?('263') ||
          link.attributes['href'].include?('253') ||
          link.attributes['href'].include?('264')
  )
    puts ' # Skipping'
    next
  end

  inner_doc = Hpricot(open(link.attributes['href']))

  puts 'Toilet.create('

  puts ':name =>\'' + inner_doc.at("div[@class='ldName']").at('span').inner_html + '\','

  address = inner_doc.at("div[@class='ldAddress1']").at('span').inner_html.to_s + inner_doc.at("div[@class='ldAddress2']").at('span').inner_html.to_s + inner_doc.at("div[@class='ldAddress3']").at('span').inner_html.to_s
  puts ':address =>\'' + address + '\','

  address = address.gsub(/( |(".*?"))/, "%20")
  searcher = "http://maps.google.com/maps/geo?q=#{address}&output=xml&oe=utf8&sensor=false&key=ABQIAAAAlyeJljQH98VMTkAORPPxhxQDNUKtWYO0YNsBQklWEm0Tg_LWZBQxMphApqQmqkL90w6Yq0GXs3E6Xw"
  cords = Hpricot(open(searcher))
  cordsfromsearch = cords.search("/kml/response/placemark/point/coordinates").inner_html.to_s

  puts ':phone =>\'' + inner_doc.at("div[@class='ldPhone']").at('span').inner_html + '\','

  ps = inner_doc.search("//div[@class='importPanelSingle']]").search("p")

  puts ':venuetype =>\'' + ps[0].inner_html.split('</strong>')[1].to_s  + '\','
  puts ':howtoaccess =>\'' + ps[1].inner_html.split('</strong>')[1].to_s  + '\','
  puts ':changingbench =>\'' + ps[3].inner_html.split('</strong>')[1].to_s  + '\','
  puts ':hoist =>\'' + ps[4].inner_html.split('</strong>')[1].to_s + '\','
  puts ':toiletlocation =>\'' + ps[5].inner_html.split('</strong>')[1].to_s  + '\','
  puts ':whocanuse =>\'' + ps[6].inner_html.to_s  + '\','

  if (cordsfromsearch.split(',').nil? || cordsfromsearch.split(',')[0].nil?)
    puts ':long => \'-4.265012741088867\','
    puts ':lat => \'55.866450104840006\''
  else
    puts ':long => \'' + cordsfromsearch.split(',')[0] + '\','
    puts ':lat => \'' + cordsfromsearch.split(',')[1] + '\''
  end
  puts ')'
end

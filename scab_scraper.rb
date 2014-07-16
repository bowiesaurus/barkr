require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.akc.org/breeds/complete_breed_list.cfm'))

breed_list = page.css('ul.common_ul li a')
breed_list.each do |link|
 puts "'#{link.text.strip}',"
 break if link.text.strip == 'Yorkshire Terrier'
end

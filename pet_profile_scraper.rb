require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.familydogsnewlife.org/category/adoptable-dogs/'))

pet_list = page.css('')

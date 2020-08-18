#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'main.rb'

doc = Nokogiri::HTML(URI.open('https://www.info.lt/veiklos/pagal_abecele'))
doc.css('//ul.list-unstyled//li//a').each do |link|
  category_name = link.content
  category_link = link['href']
  puts category_link
end
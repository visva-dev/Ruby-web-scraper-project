#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://www.info.lt/veiklos/pagal_abecele'))

puts "### Search for nodes by css"
doc.css('nav ul.menu li a', 'article h2').each do |link|
  puts link.content
end

# puts "### Search for nodes by xpath"
# doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
#   puts link.content
# end

# puts "### Or mix and match."
# doc.search('nav ul.menu li a', '//article//h2').each do |link|
#   puts link.content
# end

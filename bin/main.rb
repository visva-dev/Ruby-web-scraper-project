#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://www.info.lt/veiklos/pagal_abecele'))

puts "### Search for nodes by css"
doc.css('//ul.list-unstyled//li//a').each do |link|
  categories = { :category => link.content, :link => link['href'] }
  # puts categories[:link]
  # puts link.content
  # puts link['href']
end
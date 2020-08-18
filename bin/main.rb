#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'json'

# Fetch and parse HTML document
doc = Nokogiri::HTML(URI.open('https://www.info.lt/veiklos/pagal_abecele'))
doc.css('//ul.list-unstyled//li//a').each do |link|
  categories = [link.content]
  categories << link['href']
  # p categories
  # json = JSON.pretty_generate(categories)
  File.open("categories_data.json", 'a') do |something|
    something.puts categories.to_json
  end
  # categories = { :category => link.content, :url => link['href'] }
  # puts categories[:category]
  # puts link.content
  # puts link['href']
end

# company_info = Nokogiri::HTML(URI.open('https://www.info.lt/veiklos/pagal_abecele'))
# company_info.css('//ul.list-unstyled//li//a').each do |link|

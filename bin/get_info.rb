#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))

# doc.css('//div.imoniu-sarasas-col1').each do |link|
#   company_name = doc.css('//div.row//div.info//div.pavadinimas_pirmumas//a', '//div.row//div.info//div.pavadinimas//a')
#   # category_link = link['href']
#   puts company_name[9].content
# end

# doc.css('//div.row//div.info//div.pavadinimas_pirmumas//a', '//div.row//div.info//div.pavadinimas//a').each do |link|
#   company_name = link.content
#   puts company_name
# end

# doc.css('//div.kontaktai//div.work-time-now').each do |link|
#   working_time = link.content
#   puts working_time
# end

# doc.css('//div.kontaktai//div.telefonas').each do |link|
#   mobile_phone = link.content
#   puts mobile_phone
# end

# doc.css('//div.kontaktai//div.tinklalapis//a').each do |link|
#   website = link['href']
#   puts website
# end

doc.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
  website = link.content
  puts website
end


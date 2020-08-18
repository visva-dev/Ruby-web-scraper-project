require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
doc.css('//div.row//div.info//div.pavadinimas_pirmumas//a', '//div.row//div.info//div.pavadinimas//a').each do |link|
  category_name = link.content
  category_link = link['href']
  puts category_name
end
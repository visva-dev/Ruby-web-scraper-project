#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

def conect_to_page
  doc = Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
end



# doc.css('//div.imoniu-sarasas-col1').each do |link|
#   company_name = doc.css('//div.row//div.info//div.pavadinimas_pirmumas//a', '//div.row//div.info//div.pavadinimas//a')
#   category_link = link['href']
#   puts company_name[9].content
# end
def company_name
  conect_to_page.css('//div.row//div.info//div.pavadinimas_pirmumas//a', '//div.row//div.info//div.pavadinimas//a').each do |link|
    # company_name = link.content
  end
end

def working_time
  conect_to_page.css('//div.kontaktai//div.work-time-now').each do |link|
    # working_time = link.content
    # puts working_time
  end
end

def phone_number
  conect_to_page.css('//div.kontaktai//div.telefonas').each do |link|
    # mobile_phone = link.content
    # puts mobile_phone
  end
end

def website_link
  conect_to_page.css('//div.kontaktai//div.tinklalapis//a').each do |link|
    # website = link['href']
  end
end

def address
  conect_to_page.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
    # address = link.content
    # puts address
  end
end

# puts company_name.text
# puts working_time.text
# puts phone_number.text
# puts website_link.map {|element| element["href"]}
# puts address.text
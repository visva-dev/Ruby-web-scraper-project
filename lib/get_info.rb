require 'nokogiri'
require 'open-uri'

class GetInfo
  def conect_to_page
    Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
  end

  def lawyer_name
    conect_to_page.css('//div.row//div.info//div.pavadinimas_pirmumas//a',
                       '//div.row//div.info//div.pavadinimas//a').each do |link|
      lawyer = link.content
      puts lawyer
    end
  end

  def working_time
    conect_to_page.css('//div.kontaktai//div.work-time-now').each do |link|
      working_time = link.content
      puts working_time
    end
  end

  def phone_number
    conect_to_page.css('//div.kontaktai//div.telefonas').each do |link|
      mobile_phone = link.content
      puts mobile_phone
    end
  end

  def website_link
    conect_to_page.css('//div.kontaktai//div.tinklalapis//a').each do |link|
      website = link['href']
      puts website
    end
  end

  def lawyer_address
    conect_to_page.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
      address = link.content
      puts address
    end
  end

  def all_lawyers
    lawyer_name
    working_time
    phone_number
    website_link
    lawyer_address
  end
end

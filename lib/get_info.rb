require 'nokogiri'
require 'open-uri'

class GetInformation
  def self.conect_to_page
    Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
  end

  def self.lawyer_name
    conect_to_page.css('//div.row//div.info//div.pavadinimas_pirmumas//a',
                       '//div.row//div.info//div.pavadinimas//a').each do |link|
                       end
  end

  def self.working_time
    conect_to_page.css('//div.kontaktai//div.work-time-now').each do |link|
    end
  end

  def self.phone_number
    conect_to_page.css('//div.kontaktai//div.telefonas').each do |link|
    end
  end

  def self.website_link
    conect_to_page.css('//div.kontaktai//div.tinklalapis//a').each do |link|
    end
  end

  def self.lawyer_address
    conect_to_page.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
    end
  end

  def self.show_links
    website_link.map { |link| link['href'] }
  end
end

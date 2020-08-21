require 'nokogiri'
require 'open-uri'

class GetInformation
  def self.conect_to_page
    Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
  end

  def self.lawyer_name
    conect_to_page.css('//div.row//div.info//div.pavadinimas_pirmumas//a',
                       '//div.row//div.info//div.pavadinimas//a').each do |link|
      lawyer = link.content
      puts lawyer
    end
  end

  def self.working_time
    conect_to_page.css('//div.kontaktai//div.work-time-now').each do |link|
      working_time = link.content
      puts working_time
    end
  end

  def self.phone_number
    conect_to_page.css('//div.kontaktai//div.telefonas').each do |link|
      mobile_phone = link.content
      puts mobile_phone
    end
  end

  def self.website_link
    conect_to_page.css('//div.kontaktai//div.tinklalapis//a').each do |link|
      website = link['href']
      puts website
    end
  end

  def self.lawyer_address
    conect_to_page.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
      address = link.content
      puts address
    end
  end

  def self.all_lawyers
    lawyer_name
    working_time
    phone_number
    website_link
    lawyer_address
  end

  def self.show_info
    puts 'Which lawyers info you want to get? Write down one of these words:'
    puts 'names, working_time, numbers, websites, addressess or all to get all lawyers info'
    choose = gets.chomp
    case choose
    when 'working_time'
      working_time
    when 'names'
      lawyer_name
    when 'numbers'
      phone_number
    when 'websites'
      website_link
    when 'addressess'
      lawyer_address
    when 'all'
      all_lawyers
    end
  end
end

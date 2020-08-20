#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

class Launcher
  def initialize
    @run_program = true
  end

  def conect_to_page
    doc = Nokogiri::HTML(URI.open('https://www.info.lt/rubrika/Advokatai/100209472'))
  end

  def lawyer_name
    conect_to_page.css('//div.row//div.info//div.pavadinimas_pirmumas//a',
                       '//div.row//div.info//div.pavadinimas//a').each do |link|
      puts lawyer = link.content
    end
  end

  def working_time
    conect_to_page.css('//div.kontaktai//div.work-time-now').each do |link|
      puts working_time = link.content
    end
  end

  def phone_number
    conect_to_page.css('//div.kontaktai//div.telefonas').each do |link|
      puts mobile_phone = link.content
    end
  end

  def website_link
    conect_to_page.css('//div.kontaktai//div.tinklalapis//a').each do |link|
      puts website = link['href']
    end
  end

  def lawyer_address
    conect_to_page.css('//div.kontaktai//span.adresas-nuoroda').each do |link|
      puts address = link.content
    end
  end

  def hello
    puts "Hello, this is Lawyers data scraper, whould you like to get lawyers info? Type 'yes' or 'no' "
    @run_program = gets.chomp
    if @run_program == 'yes'
      @run_program = true
      show_info
    else
      @run_program = false
    end
  end

  def show_info
    puts 'Which lawyers info you want to get? Write down one of these words:'
    puts 'names, working time, numbers, websites, addressess or all to get all lawyers info'
    choose = gets.chomp
    if choose == 'names'
      lawyer_name
    elsif choose == 'working time'
      working_time
    elsif choose == 'numbers'
      phone_number
    elsif choose == 'websites'
      website_link
    elsif choose == 'addressess'
      lawyer_address
    elsif choose == 'all'
      lawyer_name
      working_time
      phone_number
      website_link
      lawyer_address
    end
  end
end

launch = Launcher.new
launch.hello

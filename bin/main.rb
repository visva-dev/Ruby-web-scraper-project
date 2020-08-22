#! /usr/bin/env ruby
require_relative '../lib/get_info'

def hello
  puts "Hello, this is Lawyers data scraper, whould you like to get lawyers info? Type 'yes' or 'no' "
  run_program = gets.chomp
  if run_program == 'yes'
    puts 'Which lawyers info you want to get? Write down one of these words:'
    puts 'names, working_time, numbers, websites, addressess or all to get all lawyers info'
    show_info
  elsif run_program == 'no'
    puts 'Ok, good luck!'
  elsif run_program != 'yes' || run_program != 'no'
    puts 'Please enter yes or no!'
    hello
  end
end

def show_info
  choose = gets.chomp
  case choose
  when 'working_time'
    puts GetInformation.working_time.text
  when 'names'
    puts GetInformation.lawyer_name.text
  when 'numbers'
    puts GetInformation.phone_number.text
  when 'websites'
    puts GetInformation.show_links
  when 'addressess'
    puts GetInformation.lawyer_address.text
  when 'all'
    all_info
  end
end

def all_info
  puts 'Names'
  puts '========'
  puts GetInformation.lawyer_name.text
  puts
  puts 'Work Times'
  puts '========'
  puts GetInformation.working_time.text
  puts
  puts 'Phone Numbers'
  puts '========'
  puts GetInformation.phone_number.text
  puts
  puts 'Websites Links'
  puts '========'
  puts GetInformation.show_links
  puts
  puts 'Addresses'
  puts '========'
  puts GetInformation.lawyer_address.text
end

hello

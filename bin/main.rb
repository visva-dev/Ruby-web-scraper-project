#! /usr/bin/env ruby
require_relative '../lib/get_info'

def hello
  puts "Hello, this is Lawyers data scraper, whould you like to get lawyers info? Type 'yes' or 'no' "
  run_program = gets.chomp
  if run_program == 'yes'
    GetInformation.show_info
  elsif run_program == 'no'
    puts 'Ok, good luck!'
  elsif run_program != 'yes' || run_program != 'no'
    puts 'Please enter yes or no!'
    hello
  end
end

hello

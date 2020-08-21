#! /usr/bin/env ruby
require_relative '../lib/get_info.rb'

def hello
  puts "Hello, this is Lawyers data scraper, whould you like to get lawyers info? Type 'yes' or 'no' "
  run_program = gets.chomp
  if run_program == 'yes'
    GetInformation.show_info
  else
    puts 'Ok, good luck!'
  end
end

hello

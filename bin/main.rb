#! /usr/bin/env ruby
require_relative '../lib/get_info.rb'

class Launcher < GetInfo
  def initialize
    @run_program = true
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

launch = Launcher.new
launch.hello

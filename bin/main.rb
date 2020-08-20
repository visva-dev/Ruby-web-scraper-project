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
    if choose == 'names'
      lawyer_name
    elsif choose == 'working_time'
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

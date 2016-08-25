#!/usr/bin/env ruby


=begin
It is the best thing to know about your target, like email, cellphoneNo, company, workers,etc..
This script uses the information entered by the user and modifies it as per the
arguements provided. U can use it to generate possible passwords
REGARDS:: ORION G33KS
=end


require 'optparse'
require 'rainbow/ext/string'
begin
options = {}

parser = OptionParser.new do|opts|
	opts.banner = "Usage: rubycupp.rb [options]\n".color(:green)
	
opts.on( '-h', '--help', 'Just type in common words in separate lines and at last type ok and press enter' ) do 
options[:help] = true
puts "\n\n#{opts}"
 exit 
end

opts.on( '-n', '--1234', 'Append 1234 to your input  [hi -> hi1234]') do |ottf|
options[:ottf] = true
end

opts.on( '-m', '--mix', 'Use Mix_Mode [a b -> aa ab ba bb AA AB BA BB]') do |mix|
options[:mix] = true
end

opts.on('-c', '--capital', 'Also Capitalize words [abC -> AbC]') do |cap|
  options[:cap] = true
end

opts.on('-s', '--swap', 'Use Swapcase [aBc -> AbC]') do |swap|
  options[:swap] = true
end

opts.on('-f', '--file' ,'Append 1234 to existing pass file') do |list|
options[:file] = true
end
end
parser.parse!


#APPEND 1234 to file
if options[:file]
pass = File.new("pass.txt", "w+")
puts "Enter the full path of password file like /home/legion/desktop/password.lst"
path = gets.chomp
File.open(path).each do |line|
pass.write("#{line.chomp}"+"1234\n")
end
pass.close
puts "File pass.txt created".color(:green) if File.exists?("pass.txt")
exit
end

%x{clear}

puts <<'HERE'
             __                                 
.----.--.--.|  |--.--.--.----.--.--.-----.-----.
|   _|  |  ||  _  |  |  |  __|  |  |  _  |  _  |
|__| |_____||_____|___  |____|_____|   __|   __|
                  |_____|          |__|  |__|   

RUBY COMMON USER PASSWORD PROFILER  By  OrionG33ks
Use --help for more options
https://www.facebook.com/oriongeeks

Start Typing
HERE


q=Array.new()
values=Array.new()
q << gets.chomp until q.include?("ok") or q.include?("OK")
q.delete_at(-1)
len= q.length
$stdout = File.new("pass.txt", "w+")
puts q


if options[:mix]

  count = 0
for x in 0..len-1
for count in 0..len-1
values << "#{q[x]}#{q[count]}"
end
end
#HERE THE STDOUT IS OPEN
$stdout=File.open("pass.txt", "a")
puts values
values.each{|x| puts x.swapcase}
end


#check for second argument
if options[:ottf]
  q.each{|x| print x,"1234\n"}
end


#CAPITALIZE
if options[:cap]
  q.each{|x| print x.capitalize,"\n"}
 end


#SWAPCASE
if options[:swap]
  q.each{|x| print x.swapcase,"\n"}
end

$stdout=STDOUT

puts "File pass.txt created".color(:green) if File.exists?("pass.txt")

rescue
col="cannot load such file -- colorize"
puts "Colorize gem not installed, run 'gem install colorize' in terminal as root " if (e == col)
end

#!/usr/bin/env ruby

print 'Enter timestamp: '
time = gets.chomp

dateTime = Time.at(time.to_i)
IO.popen('pbcopy', 'w') { |f| f << dateTime }
puts dateTime
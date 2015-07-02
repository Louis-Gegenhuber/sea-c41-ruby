# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# TIP: I expect you to use a loop and a few modulo operations.
(1900..2000).each do |leap|
  next if "#{leap}".to_i % 4 != 0
  next if "#{leap}".to_i % 100 == 0 && "#{leap}".to_i % 400 != 0
  puts "#{leap}".to_i
end

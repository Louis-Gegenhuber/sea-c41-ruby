# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
bye_num = 0
while bye_num < 3
  talk = gets.chomp
  if talk == 'BYE'
    bye_num += 1
    if bye_num < 3
      puts 'Nana: HOW\'S SCHOOL GOING?'
    end
elsif talk != talk.upcase
    bye_num = 0
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
else
  bye_num = 0
  year = rand(1930..1950)
  puts 'Nana: NOT SINCE ' + year.to_s + '!'
  end
end
puts 'Nana: BYE SWEETIE!'

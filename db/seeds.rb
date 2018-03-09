# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

puts "\n------------------------------------------------"
puts "-- seed file\n "

log_prefix = "   -> "


10.times do |blog|
  Blog.create!(
          title:  "Blog \##{blog+1}",
          body:   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
  )
end

puts "#{log_prefix}created 10 Blogs"


4.times do |skill|
  Skill.create!(
           title: "Skill \##{skill+1}",
           percent_utilization: 20-2*skill
  )
end

puts "#{log_prefix}created 4 Skills"



puts "\n-- end seed file"
puts "------------------------------------------------\n "

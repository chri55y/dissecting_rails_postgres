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
          body:   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
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


9.times do |element|
  Portfolio.create!(
      title:  "Portfolio Element \##{element+1}",
      subtitle: "insert Amazing Subtitle here",
      body:   element.even? ? "(Latin) Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?" : "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
      main_image: "http://via.placeholder.com/450x350",
      thumb_image: "http://via.placeholder.com/250x200"
  )
end

puts "#{log_prefix}created 9 Portfolio elements"



puts "\n-- end seed file"
puts "------------------------------------------------\n "

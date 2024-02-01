# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create Tool
Tool.destroy_all
User.destroy_all
# user = User.create!(email: "user1@example.com", password: "123456", first_name: "John", last_name: "Doe")
# Tool.create!(title: 'Drill', price: 14, description: 'Simple and quick 👌', user: user)
# Tool.create!(title: 'Saw', price: 25, description: 'Cuts everything!', user: user)
# Tool.create!(title: 'Ladder', price: 8, description: 'I know what it means to not have enough space for a ladder at home', user: user)
# Tool.create!(title: 'Hammer', price: 11, description: "When you need it, it's never there", user: user)
# Tool.create!(title: 'Axe', price: 17, description: 'Experience the life of a woodcutter for one hour', user: user)
# Tool.create!(title: 'Paint Roller', price: 1, description: 'Need soemthing to paint your house?', user: user)

require "open-uri"

user = User.create(email: 'olga@gmail.com', password: 'helloyou', first_name: 'olga', last_name: 'gavrysh')

file1 = URI.open("https://www.thespruce.com/thmb/NFdwIIaQ1i2EnjfQqxfCG8cWayA=/fit-in/1500x1106/filters:no_upscale():max_bytes(150000):strip_icc()/dewaltoverall-c15397d1c2264b1e80dba45d74505bd4.jpg")
tool1 = Tool.new(title: 'Electric Screwdriver', price: 25, description: 'Powerful and efficient electric screwdriver.', user: user)
tool1.photo.attach(io: file1, filename: "tool1.jpg", content_type: "image/jpg")
tool1.save

file2 = URI.open("https://m.media-amazon.com/images/I/71gxjj5BrAL.jpg")
tool2 = Tool.new(title: 'Hammer', price: 10, description: 'Classic hammer for various tasks.', user: user)
tool2.photo.attach(io: file2, filename: "tool2.jpg", content_type: "image/jpg")
tool2.save

file3 = URI.open("https://mobileimages.lowes.com/productimages/51d5685e-890f-4cf3-a5d8-ecb0b8fe5cd0/62905664.jpg")
tool3 = Tool.new(title: 'Power Drill', price: 30, description: 'Versatile power drill for different applications.', user: user)
tool3.photo.attach(io: file3, filename: "tool3.jpg", content_type: "image/jpg")
tool3.save

file4 = URI.open("https://p.turbosquid.com/ts-thumb/w3/GugMvL/zLWjRFER/2f/png/1566122268/600x600/fit_q87/bac2f2f38811f8782eb55408fb2afe1b32463a3b/2f.jpg")
tool4 = Tool.new(title: 'Saw', price: 20, description: 'Sharp and durable saw for cutting various materials.', user: user)
tool4.photo.attach(io: file4, filename: "tool4.jpg", content_type: "image/jpg")
tool4.save

file5 = URI.open("https://m.media-amazon.com/images/I/71Is17KaLfL._AC_UF894,1000_QL80_.jpg")
tool5 = Tool.new(title: 'Wrench Set', price: 18, description: 'Set of versatile wrenches for different sizes.', user: user)
tool5.photo.attach(io: file5, filename: "tool5.jpg", content_type: "image/jpg")
tool5.save

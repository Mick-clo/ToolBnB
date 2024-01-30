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

Tool.create(title: 'Drill', price: 14, description: 'Simple and quick 👌', user_id: 1)
Tool.create(title: 'Saw', price: 25, description: 'Cuts everything!', user_id: 1)
Tool.create(title: 'Ladder', price: 8, description: 'I know what it means to not have enough space for a ladder at home', user_id: 1)
Tool.create(title: 'Hammer', price: 11, description: "When you need it, it's never there", user_id: 1)
Tool.create(title: 'Axe', price: 17, description: 'Experience the life of a woodcutter for one hour', user_id: 1)
Tool.create(title: 'Paint Roller', price: 1, description: 'Need soemthing to paint your house?', user_id: 1)

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

User.create!(email: "mick@wagon.com", encrypted_password: "password", password: "password")

Tool.create(title: 'first tool', price: 11, description: 'A very useful tool', user_id: 1)
Tool.create(title: 'second tool', price: 11, description: 'A very useful tool', user_id: 1)
Tool.create(title: 'third tool', price: 11, description: 'A very useful tool', user_id: 1)
Tool.create(title: 'fourth tool', price: 11, description: 'A very useful tool', user_id: 1)
Tool.create(title: 'fifth tool', price: 11, description: 'A very useful tool', user_id: 1)
Tool.create(title: 'sixth tool', price: 11, description: 'A very useful tool', user_id: 1)

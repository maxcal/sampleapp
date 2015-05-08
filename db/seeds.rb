# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = (1..50).map { User.create!(name: Faker::Name.name ) }

50.times do
  Comment.create!(
      user: users.sample,
      description: Faker::Lorem.paragraph
  )
end
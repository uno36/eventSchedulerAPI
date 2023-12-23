# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb


require 'faker'

1000.times do
  User.create(
    email: Faker::Internet.unique.email,
    password: '123456'
  )
end

30.times do
  Event.create(
    title: Faker::Lorem.sentence(word_count: 2),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    date: Faker::Date.forward(days: 30),
    time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).strftime('%H:%M'),
    user_id: User.pluck(:id).sample 
  )
end
puts 'event creates successfully!'

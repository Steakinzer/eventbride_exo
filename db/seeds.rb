# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')
ActiveRecord::Base.connection.reset_pk_sequence!('events')
user = []
20.times do 
user << User.create(email: Faker::Internet.unique.email, password: "blabla", description: Faker::Lorem.sentence(word_count: 10), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
event = []
dur = [10,25,35,40,45]
10.times do 
event << Event.create!(start_date: (DateTime.now + rand(10..200)), duration: dur[rand(0..4)], title: Faker::Lorem.characters(number: 20, min_alpha: 6), description: Faker::Lorem.sentence(word_count: 10), price: rand(1..1000), location: Faker::Address.city, admin_id: rand(1..10) )
end
attendance = []

attendance << Attendance.create(event_id: 1, participent_id: 1, stripe_customer_id: "123456")



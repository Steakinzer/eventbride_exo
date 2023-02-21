# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Event.destroy_all
Attendance.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')
ActiveRecord::Base.connection.reset_pk_sequence!('events')


user = User.create(email: "eventbride@yopmail.com", encrypted_password: "blabla", description: "c moi", first_name: "Clem", last_name: "Oim")

event = []
event << Event.create!(start_date: (DateTime.now + 10), duration: 25, title: "Le test ah oui", description: "c'est un test azdazdazdazdazdazdazd", price: 100, location: "Paris", admin_id: 1 )

attendance = []

attendance << Attendance.create(event_id: 1, participent_id: 1, stripe_customer_id: "123456")



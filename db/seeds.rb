# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('events')
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')

n = 0

users = []
10.times do
    n = n+1
    users << User.create(
        email: "polo#{n}@yopmail.fr",
        password: "password",
        description: "Test description user numéro #{n}",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name 
    )
end

events = []
10.times do 
    n = n+1
    events << Event.create(
        start_date: Faker::Time.forward(days: 365, period: :all),
        duration: 60,
        title: "Test titre numéro #{n}",
        description: "Test description event numéro #{n}",
        price: Faker::Number.between(from: 1, to: 1000),
        location: Faker::Address.city
    )
end

attendances = []
10.times do 
    attendances << Attendance.create(
        stripe_customer_id: "test seed",
        user: users.sample,
        event: events.sample
    )
end

puts "*** Database seed done ***"
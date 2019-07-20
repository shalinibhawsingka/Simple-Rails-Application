# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
    User.create(
        user_name: Faker::Name.name,
        user_email: Faker::Name.first_name+"@thispart.com",
        phone_number: Faker::Number.number(8)
    )
end

50.times do
    Employee.create(
        name: Faker::Name.name,
        email: Faker::Name.first_name+"@thispart.com",
        phone_number: Faker::Number.number(8)
    )
end

50.times do
    Student.create(
        name: Faker::Name.name,
        email: Faker::Name.first_name+"@thispart.com",
        phone_number: Faker::Number.number(8)
    )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

UserCollab.delete_all
Collab.delete_all
User.delete_all


10.times do
  Collab.create(name: Faker::Music.band, drummers:rand(4), guitars:rand(4),basses:rand(4), keyboards:rand(4), rappers:rand(4),singers:rand(4), beatboxers: rand(4), producers: rand(4))
end

specialties = %w(drums guitar bass keyboard rapper singer beatboxer producer)

50.times do
  User.create(name: Faker::Name.unique.name, email: Faker::Internet.email, location: Faker::Address.city, specialty: specialties.sample)
end

50.times do
  UserCollab.create(user: User.all.sample, collab: Collab.all.sample)
end

# def checker
#   @user = User.all.sample
#   @collab = Collab.all.sample
# end

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


# images = %w(https://www.topbestpics.com/wp-content/uploads/2017/06/cute-animals-15-380x250.jpg
# https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfQoa8vmNEktXWXy5NEKoUfeAZsbpesx0W7l9RHAfp0LBY3PE3
# https://sites.psu.edu/siowfa16/files/2016/09/baby-seal-29vsgyf.jpg
# https://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-32.jpg
# https://media.mnn.com/assets/images/2010/02/baby-orangutan.jpg.1000x0_q80_crop-smart.jpg
# https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIXJ9z1UC21KuyVIVqfYTss4HacQVh48Cd_mnn831aYsbv3n8Y
# https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0QR67wkQOztPNDV5jHqiivyBrAAlLPbmGOQhPdhgwCxMFdywg4Q
# https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/30/pembroke-welsh-corgi.jpg
# https://pbs.twimg.com/profile_images/941322358245154816/tF4dPHrS_400x400.jpg
# https://thenypost.files.wordpress.com/2018/05/180516-woman-mauled-by-angry-wiener-dogs-feature.jpg?quality=90&strip=all&w=618&h=410&crop=1)

images = %w(https://goo.gl/iAEawy
https://goo.gl/dYvoeG
https://goo.gl/kGhQ6P
https://goo.gl/16sh5M
https://goo.gl/tmt4MS
https://goo.gl/Gi6Rc1
https://goo.gl/ejtfrJ
https://goo.gl/yvscpv
https://goo.gl/Qn7MqE
https://goo.gl/m78xbz
https://goo.gl/SJMNBZ
https://goo.gl/eCS1kw)

counter = 0
12.times do
  Collab.create(name: Faker::Music.unique.band, drummers:rand(4), guitars:rand(4),basses:rand(4), keyboards:rand(4), rappers:rand(4),singers:rand(4), beatboxers: rand(4), producers: rand(4), image: images[counter])

  counter +=1
end

# Collab.first.image = '../public/collab1.jpg'

specialties = %w(drummers guitars basses keyboards rappers singers beatboxers producers)

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

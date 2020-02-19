# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'generating 10 flats'

IMG_URLS = %w[https://images.unsplash.com/photo-1512917774080-9991f1c4c750 https://images.unsplash.com/photo-1475855581690-80accde3ae2b https://images.unsplash.com/photo-1518780664697-55e3ad937233 https://images.unsplash.com/photo-1527030280862-64139fba04ca https://images.unsplash.com/photo-1510798831971-661eb04b3739?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=668&q=80].freeze

index = 0
5.times do
  Flat.create!(
    name: "#{Faker::Address.community} #{Faker::Cannabis.strain}",
    address: Faker::Address.street_address,
    description: (Faker::Lorem.sentences(number: (1..5).to_a.sample, supplemental: true)).join(" "),
    price_per_night: (50..100).to_a.sample + 0.99,
    number_of_guests: (1..10).to_a.sample,
    picture_url: IMG_URLS[index]
  )
  index += 1
end

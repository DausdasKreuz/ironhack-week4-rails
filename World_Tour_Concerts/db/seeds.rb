require 'ffaker'
10.times do
  Concert.create(
    artist: FFaker::Music.artist,
    venue: FFaker::Venue.name,
    date: FFaker::Time.datetime,
    price: 30 + Random.rand(100),
    description: FFaker::Lorem.phrase,
    city: FFaker::Address.city
  )
end

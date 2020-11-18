Restaurant.destroy_all
puts 'database is clean'

restaurants = []

5.times do
  restaurants << Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
end

5.times do
  reviews << Review.create!(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant: restaurants.sample
  )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  # def self.begin
  #   seed = Seed.new
  #   seed.generate_reviews
  # end
  Location.destroy_all

  # def generate_reviews
    5.times do |index|
      Location.create!(city: Faker::Nation.capital_city)
    end

    30.times do |i|
      Review.create!(
        author: Faker::Book.author,
        content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
        location_id: Faker::Number.between(from: 1, to: 5)
      )
    end
  end
  puts "Created #{Location.count} Locations and #{Review.count} reviews."
# end

# Seed.begin
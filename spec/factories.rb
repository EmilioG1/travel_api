FactoryBot.define do
  factory(:review) do
    author {Faker::Book.author}
    content {Faker::Movies::HitchhikersGuideToTheGalaxy.quote}
  end
end
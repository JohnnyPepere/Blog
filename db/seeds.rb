require 'faker'
 
Article.destroy_all
User.destroy_all

10.times do |index|
	user1 = User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, email: Faker::Internet.email)
	article1 = Article.create!(title: Faker::WorldOfWarcraft.hero, content:Faker::WorldOfWarcraft.quote, user:user1)
	article2 = Article.create!(title: Faker::WorldOfWarcraft.hero, content:Faker::WorldOfWarcraft.quote, user:user1)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
JoinTableStrollDog.destroy_all

10.times do
  city = City.create!(name: Faker::Address.city)
end

10.times do

  dog = Dog.create!(
                    name: Faker::Name.first_name,
                    city: City.all.sample
                    )
  dogsitter = Dogsitter.create!(
                                name: Faker::Name.first_name,
                                city: City.all.sample
                                )

  stroll = Stroll.create!(
                          date: Faker::Date.forward(30),
                          dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id),
                          city: City.all.sample
                          )
  join_table_stroll_dog = JoinTableStrollDog.create!(
                                                      dog_id: rand(Dog.first.id..Dog.last.id),
                                                      stroll_id: rand(Stroll.first.id..Stroll.last.id)
                                                    )

end

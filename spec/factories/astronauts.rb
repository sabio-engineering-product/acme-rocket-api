# spec/factories/astronauts.rb

FactoryBot.define do
  factory :astronaut do
    name { "Neil Armstrong" }
    nationality { "American" }
    date_of_birth { "1930-08-05" }
  end
end

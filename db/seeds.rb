# db/seeds.rb

rockets = [
  { name: 'Falcon 1', model: 'F1', manufacturer: 'SpaceX' },
  { name: 'Falcon 9', model: 'F9', manufacturer: 'SpaceX' },
  { name: 'Falcon Heavy', model: 'FH', manufacturer: 'SpaceX' },
  { name: 'Starship', model: 'SSH', manufacturer: 'SpaceX' }
]

rockets.each do |rocket|
  created_rocket = Rocket.create(rocket)

  5.times do |i|
    Launch.create(
      mission_name: "#{created_rocket.name} Mission #{i + 1}",
      launch_date: Time.now + i.months,
      launch_site: 'Vandenberg',
      rocket: created_rocket
    )
  end
end

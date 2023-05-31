FactoryBot.define do
  factory :launch do
    mission_name { "Starlink" }
    launch_date { Time.now }
    launch_site { "Vandenberg" }
    association :rocket
  end
end
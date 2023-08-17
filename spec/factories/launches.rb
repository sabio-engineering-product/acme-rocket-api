# frozen_string_literal: true

FactoryBot.define do
  factory :launch do
    mission_name { 'Starlink' }
    launch_date { Time.zone.now }
    launch_site { 'Vandenberg' }
    rocket
  end
end

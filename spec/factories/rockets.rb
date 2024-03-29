# frozen_string_literal: true

FactoryBot.define do
  factory :rocket do
    name { 'Falcon' }
    model { 'F9' }
    manufacturer { 'SpaceX' }
  end
end

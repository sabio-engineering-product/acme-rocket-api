# frozen_string_literal: true

# spec/models/astronaut_spec.rb

require 'rails_helper'

RSpec.describe Astronaut do
  it 'has a valid factory' do
    expect(build(:astronaut)).to be_valid
  end

  it 'is invalid without a name' do
    astronaut = build(:astronaut, name: nil)
    expect(astronaut).not_to be_valid
  end

  it 'is invalid without a nationality' do
    astronaut = build(:astronaut, nationality: nil)
    expect(astronaut).not_to be_valid
  end

  it 'is invalid without a date_of_birth' do
    astronaut = build(:astronaut, date_of_birth: nil)
    expect(astronaut).not_to be_valid
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rocket do
  it 'has a valid factory' do
    expect(build(:rocket)).to be_valid
  end

  it 'is invalid without a name' do
    rocket = build(:rocket, name: nil)
    expect(rocket).not_to be_valid
  end

  it 'is invalid without a model' do
    rocket = build(:rocket, model: nil)
    expect(rocket).not_to be_valid
  end

  it 'is invalid without a manufacturer' do
    rocket = build(:rocket, manufacturer: nil)
    expect(rocket).not_to be_valid
  end
end

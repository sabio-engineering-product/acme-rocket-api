require 'rails_helper'

RSpec.describe Rocket, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:rocket)).to be_valid
  end

  it "is invalid without a name" do
    rocket = FactoryBot.build(:rocket, name: nil)
    expect(rocket).not_to be_valid
  end

  it "is invalid without a model" do
    rocket = FactoryBot.build(:rocket, model: nil)
    expect(rocket).not_to be_valid
  end

  it "is invalid without a manufacturer" do
    rocket = FactoryBot.build(:rocket, manufacturer: nil)
    expect(rocket).not_to be_valid
  end
end

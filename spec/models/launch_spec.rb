require 'rails_helper'

RSpec.describe Launch, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:launch)).to be_valid
  end

  it "is invalid without a mission_name" do
    launch = FactoryBot.build(:launch, mission_name: nil)
    expect(launch).not_to be_valid
  end

  it "is invalid without a launch_date" do
    launch = FactoryBot.build(:launch, launch_date: nil)
    expect(launch).not_to be_valid
  end

  it "is invalid without a launch_site" do
    launch = FactoryBot.build(:launch, launch_site: nil)
    expect(launch).not_to be_valid
  end

  it "is invalid without a rocket" do
    launch = FactoryBot.build(:launch, rocket: nil)
    expect(launch).not_to be_valid
  end

  it "has many astronauts" do
    launch = create(:launch)
    astronaut1 = create(:astronaut)
    astronaut2 = create(:astronaut)

    launch.astronauts << astronaut1
    launch.astronauts << astronaut2

    expect(launch.astronauts.count).to eq 2
  end
end
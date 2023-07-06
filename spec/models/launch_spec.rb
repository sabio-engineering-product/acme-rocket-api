# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Launch do
  it 'has a valid factory' do
    expect(build(:launch)).to be_valid
  end

  it 'is invalid without a mission_name' do
    launch = build(:launch, mission_name: nil)
    expect(launch).not_to be_valid
  end

  it 'is invalid without a launch_date' do
    launch = build(:launch, launch_date: nil)
    expect(launch).not_to be_valid
  end

  it 'is invalid without a launch_site' do
    launch = build(:launch, launch_site: nil)
    expect(launch).not_to be_valid
  end

  it 'is invalid without a rocket' do
    launch = build(:launch, rocket: nil)
    expect(launch).not_to be_valid
  end
end

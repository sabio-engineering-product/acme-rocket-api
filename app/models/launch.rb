# frozen_string_literal: true

class Launch < ApplicationRecord
  belongs_to :rocket
  has_many :astronaut_launches, dependent: :destroy
  has_many :astronauts, through: :astronaut_launches
  validates :mission_name, :launch_date, :launch_site, presence: true
end

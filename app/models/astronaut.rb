# frozen_string_literal: true

class Astronaut < ApplicationRecord
  has_many :astronaut_launches, dependent: :destroy
  has_many :launches, through: :astronaut_launches
  validates :name, :nationality, :date_of_birth, presence: true
end

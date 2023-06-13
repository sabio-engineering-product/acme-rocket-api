class Astronaut < ApplicationRecord
  has_and_belongs_to_many :launches
  validates :name, :nationality, :date_of_birth, presence: true
end

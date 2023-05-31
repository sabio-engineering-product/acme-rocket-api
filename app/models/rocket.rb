class Rocket < ApplicationRecord
  has_many :launches
  validates :name, :model, :manufacturer, presence: true
end

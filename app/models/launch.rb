class Launch < ApplicationRecord
  belongs_to :rocket
  has_and_belongs_to_many :astronauts
  validates :mission_name, :launch_date, :launch_site, presence: true
end

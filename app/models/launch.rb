class Launch < ApplicationRecord
  belongs_to :rocket
  validates :mission_name, :launch_date, :launch_site, presence: true
end

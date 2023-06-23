# frozen_string_literal: true

class Rocket < ApplicationRecord
  has_many :launches, dependent: :destroy
  validates :name, :model, :manufacturer, presence: true
end

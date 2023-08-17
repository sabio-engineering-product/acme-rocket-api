# frozen_string_literal: true

class CreateJoinTableAstronautsLaunches < ActiveRecord::Migration[7.0]
  def change
    create_join_table :astronauts, :launches do |t|
      # t.index [:astronaut_id, :launch_id]
      # t.index [:launch_id, :astronaut_id]
    end
  end
end

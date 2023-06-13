class CreateAstronauts < ActiveRecord::Migration[7.0]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.string :nationality
      t.date :date_of_birth

      t.timestamps
    end
  end
end

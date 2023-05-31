class CreateLaunches < ActiveRecord::Migration[7.0]
  def change
    create_table :launches do |t|
      t.string :mission_name
      t.datetime :launch_date
      t.string :launch_site
      t.references :rocket, null: false, foreign_key: true

      t.timestamps
    end
  end
end

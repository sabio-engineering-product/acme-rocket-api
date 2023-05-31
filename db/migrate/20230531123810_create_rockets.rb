class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :model
      t.string :manufacturer

      t.timestamps
    end
  end
end

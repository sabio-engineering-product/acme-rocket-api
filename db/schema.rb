# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_601_122_719) do
  create_table 'astronauts', force: :cascade do |t|
    t.string 'name'
    t.string 'nationality'
    t.date 'date_of_birth'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'astronauts_launches', id: false, force: :cascade do |t|
    t.integer 'astronaut_id', null: false
    t.integer 'launch_id', null: false
  end

  create_table 'launches', force: :cascade do |t|
    t.string 'mission_name'
    t.datetime 'launch_date'
    t.string 'launch_site'
    t.integer 'rocket_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['rocket_id'], name: 'index_launches_on_rocket_id'
  end

  create_table 'rockets', force: :cascade do |t|
    t.string 'name'
    t.string 'model'
    t.string 'manufacturer'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'launches', 'rockets'
end

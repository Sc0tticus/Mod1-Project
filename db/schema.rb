# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_27_154117) do

  create_table "coaches", force: :cascade do |t|
    t.string "team_name"
    t.string "name"
    t.integer "age"
    t.integer "years_as_coach"
  end

  create_table "players", force: :cascade do |t|
    t.string "team_name"
    t.string "name"
    t.integer "age"
    t.string "position"
    t.integer "avg_num_points"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "coach_id"
    t.integer "player_id"
    t.string "location"
    t.string "stadium"
    t.index ["coach_id"], name: "index_teams_on_coach_id"
    t.index ["player_id"], name: "index_teams_on_player_id"
  end

end
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_16_180831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "player_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "team_name"
    t.string "img"
    t.string "position"
    t.integer "weight_pounds"
    t.integer "height_feet"
    t.integer "height_inches"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "user_id"
    t.string "team_name"
    t.string "player1_first_name"
    t.string "player1_last_name"
    t.string "player1_team_name"
    t.string "player1_img"
    t.integer "player1_id"
    t.string "player2_first_name"
    t.string "player2_last_name"
    t.string "player2_team_name"
    t.string "player2_img"
    t.integer "player2_id"
    t.string "player3_first_name"
    t.string "player3_last_name"
    t.string "player3_team_name"
    t.string "player3_img"
    t.integer "player3_id"
    t.string "player4_first_name"
    t.string "player4_last_name"
    t.string "player4_team_name"
    t.string "player4_img"
    t.integer "player4_id"
    t.string "player5_first_name"
    t.string "player5_last_name"
    t.string "player5_team_name"
    t.string "player5_img"
    t.integer "player5_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

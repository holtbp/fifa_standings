# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150412061713) do

  create_table "games", force: :cascade do |t|
    t.string   "tiebreaker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_teams_users", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.integer  "user_id"
    t.integer  "score"
    t.boolean  "is_winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "games_teams_users", ["game_id", "team_id", "user_id"], name: "index_games_teams_users_on_game_id_and_team_id_and_user_id", unique: true

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.text     "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.text     "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "win_count"
    t.integer  "loss_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120620202413) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tours", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "description"
    t.integer  "min_capacity"
    t.integer  "max_capacity"
    t.string   "equipement_required"
    t.integer  "difficulty_level"
    t.integer  "activity_id"
    t.integer  "duration"
    t.time     "starting_time"
    t.string   "meeting_point"
    t.date     "available_from"
    t.date     "available_to"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "contact_name"
    t.string   "description"
    t.date     "not_operating_from"
    t.date     "not_operating_to"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end

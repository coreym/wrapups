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

ActiveRecord::Schema.define(:version => 20101215234558) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channels", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "time_to_complete"
    t.text     "notes"
    t.boolean  "followup"
    t.string   "suggested_wrapup"
    t.integer  "interaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "channel_id"
  end

  create_table "dispositions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "channel_id"
    t.integer  "time_to_complete"
    t.text     "notes"
    t.boolean  "followup"
    t.string   "suggested_wrapup"
    t.integer  "interaction_id"
    t.integer  "business_id"
    t.integer  "promotion_id"
    t.integer  "mood_id"
  end

  create_table "moods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

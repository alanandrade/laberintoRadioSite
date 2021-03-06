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

ActiveRecord::Schema.define(:version => 20120829032046) do

  create_table "assets", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "explanations", :force => true do |t|
    t.integer "explainable_id"
    t.string  "explainable_type"
    t.text    "body"
  end

  add_index "explanations", ["explainable_id"], :name => "index_explanations_on_explainable_id"

  create_table "profiles", :force => true do |t|
    t.integer "user_id"
    t.string  "name",     :default => "Sin nombre", :null => false
    t.string  "nickname", :default => "",           :null => false
    t.string  "twitter"
    t.string  "facebook"
  end

  add_index "profiles", ["user_id"], :name => "users_profile_index"

  create_table "programs", :force => true do |t|
    t.string "name",        :null => false
    t.text   "description"
  end

  create_table "schedules", :force => true do |t|
    t.integer "user_id",    :null => false
    t.integer "program_id", :null => false
  end

  add_index "schedules", ["program_id"], :name => "index_schedules_on_program_id"
  add_index "schedules", ["user_id"], :name => "index_schedules_on_user_id"

  create_table "spaces", :force => true do |t|
    t.integer "day"
    t.integer "hour"
    t.integer "minute"
    t.integer "program_id"
  end

  add_index "spaces", ["program_id"], :name => "index_spaces_on_program_id"

  create_table "users", :force => true do |t|
    t.string  "email",                                  :null => false
    t.string  "crypted_password",                       :null => false
    t.string  "password_salt",                          :null => false
    t.string  "persistence_token",                      :null => false
    t.string  "single_access_token",                    :null => false
    t.string  "perishable_token",                       :null => false
    t.boolean "admin",               :default => false
  end

end

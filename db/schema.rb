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

ActiveRecord::Schema.define(:version => 20130223164408) do

  create_table "enlistment_tasks", :force => true do |t|
    t.integer  "enlistment_id"
    t.integer  "task_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "status",            :default => "working"
    t.text     "error_description"
  end

  create_table "enlistments", :force => true do |t|
    t.integer  "lab_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roadblocks", :force => true do |t|
    t.text     "description"
    t.string   "status"
    t.integer  "enlistment_task_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.text     "solution"
  end

  create_table "tasks", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "lab_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "status",          :default => "working"
  end

end

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

ActiveRecord::Schema.define(version: 20160430190419) do

  create_table "alarms", force: :cascade do |t|
    t.integer  "configdb_id",     limit: 4
    t.integer  "configattrib_id", limit: 4
    t.datetime "alarm_time"
    t.string   "alarm_state",     limit: 20
    t.string   "alarm_component", limit: 100
    t.string   "alarm_value",     limit: 20
    t.string   "flag",            limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "alarms", ["configattrib_id"], name: "index_alarms_on_configattrib_id", using: :btree
  add_index "alarms", ["configdb_id"], name: "index_alarms_on_configdb_id", using: :btree

  create_table "configattribdetails", force: :cascade do |t|
    t.integer  "configattrib_id", limit: 4
    t.datetime "log_time"
    t.string   "param1",          limit: 100
    t.string   "param2",          limit: 100
    t.string   "notified",        limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "configdb_id",     limit: 4
  end

  add_index "configattribdetails", ["configattrib_id"], name: "index_configattribdetails_on_configattrib_id", using: :btree
  add_index "configattribdetails", ["configdb_id"], name: "index_configattribdetails_on_configdb_id", using: :btree

  create_table "configattribexcls", force: :cascade do |t|
    t.integer  "configattrib_id", limit: 4
    t.string   "param1",          limit: 100
    t.string   "excludemonitor",  limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "configdb_id",     limit: 4
  end

  add_index "configattribexcls", ["configattrib_id"], name: "index_configattribexcls_on_configattrib_id", using: :btree
  add_index "configattribexcls", ["configdb_id"], name: "index_configattribexcls_on_configdb_id", using: :btree

  create_table "configattribincls", force: :cascade do |t|
    t.integer  "configattrib_id", limit: 4
    t.string   "param1",          limit: 100
    t.string   "th_warning",      limit: 10
    t.string   "th_critical",     limit: 10
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "configdb_id",     limit: 4
  end

  add_index "configattribincls", ["configattrib_id"], name: "index_configattribincls_on_configattrib_id", using: :btree
  add_index "configattribincls", ["configdb_id"], name: "index_configattribincls_on_configdb_id", using: :btree

  create_table "configattribmasters", force: :cascade do |t|
    t.integer  "configattrib_id", limit: 4
    t.datetime "log_time"
    t.string   "param1",          limit: 100
    t.string   "param2",          limit: 100
    t.string   "notified",        limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "configdb_id",     limit: 4
  end

  create_table "configattribs", force: :cascade do |t|
    t.integer  "configdb_id",       limit: 4
    t.string   "attribute_name",    limit: 20
    t.string   "monitor",           limit: 1
    t.string   "th_warning",        limit: 10
    t.string   "th_critical",       limit: 10
    t.text     "command",           limit: 65535
    t.string   "command_operand",   limit: 100
    t.string   "command_operator",  limit: 10
    t.string   "command_file_type", limit: 10
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "configattribs", ["attribute_name"], name: "index_configattribs_on_attribute_name", unique: true, using: :btree
  add_index "configattribs", ["configdb_id"], name: "index_configattribs_on_configdb_id", using: :btree

  create_table "configdbs", force: :cascade do |t|
    t.string   "location",   limit: 100
    t.string   "username",   limit: 20
    t.string   "password",   limit: 30
    t.string   "monitor",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "configdbs", ["location"], name: "index_configdbs_on_location", unique: true, using: :btree

  add_foreign_key "alarms", "configattribs"
  add_foreign_key "alarms", "configdbs"
  add_foreign_key "configattribdetails", "configattribs"
  add_foreign_key "configattribexcls", "configattribs"
  add_foreign_key "configattribincls", "configattribs"
  add_foreign_key "configattribs", "configdbs"
end

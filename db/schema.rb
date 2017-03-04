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

ActiveRecord::Schema.define(version: 20170304151532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "private_cloud_iis", force: :cascade do |t|
    t.string   "code"
    t.string   "category"
    t.string   "service_name"
    t.string   "service_level"
    t.string   "elasticity"
    t.string   "server"
    t.string   "deliver_mode"
    t.string   "version"
    t.string   "physical_cores"
    t.string   "virtual_cpus"
    t.string   "operative_system"
    t.string   "processor_speed"
    t.string   "memory_ram"
    t.string   "storage"
    t.string   "characteristic_1"
    t.string   "characteristic_2"
    t.string   "characteristic_3"
    t.string   "characteristic_4"
    t.string   "billing_unit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simulators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

end

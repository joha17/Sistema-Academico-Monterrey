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

ActiveRecord::Schema.define(version: 20151123080427) do

  create_table "categories", force: :cascade do |t|
    t.string   "nomCategory"
    t.text     "desCategory"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "editorials", force: :cascade do |t|
    t.string   "NomEdi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "LugEven"
    t.datetime "FechEven"
    t.text     "DescEven"
    t.string   "NomEven"
    t.string   "NomUs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.string   "TitLib"
    t.string   "AutLib"
    t.string   "EdicLib"
    t.integer  "AnioLib"
    t.datetime "FecLib"
    t.string   "LugLib"
    t.text     "ObsLib"
    t.text     "DesLib"
    t.integer  "CantLib"
    t.integer  "Disp"
    t.string   "CodDewLib"
    t.integer  "editorial_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "NomEdi"
  end

  add_index "libros", ["editorial_id"], name: "index_libros_on_editorial_id"

  create_table "places", force: :cascade do |t|
    t.string   "NomPlace"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prestamo_estados", force: :cascade do |t|
    t.string   "nomEstPres"
    t.text     "desEstPres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prestamos", force: :cascade do |t|
    t.date     "fecSol"
    t.date     "fecDev"
    t.integer  "user_id"
    t.integer  "libro_id"
    t.integer  "prestamo_estado_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "prestamos", ["libro_id"], name: "index_prestamos_on_libro_id"
  add_index "prestamos", ["prestamo_estado_id"], name: "index_prestamos_on_prestamo_estado_id"
  add_index "prestamos", ["user_id"], name: "index_prestamos_on_user_id"

  create_table "queries", force: :cascade do |t|
    t.string   "NomCon"
    t.string   "DesCon"
    t.date     "FecCon"
    t.integer  "user_id"
    t.integer  "query_state_id", default: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "queries", ["query_state_id"], name: "index_queries_on_query_state_id"
  add_index "queries", ["user_id"], name: "index_queries_on_user_id"

  create_table "query_states", force: :cascade do |t|
    t.string   "DeState"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nomRole"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "roles", ["user_id"], name: "index_roles_on_user_id"

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end

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

ActiveRecord::Schema.define(version: 20151117050136) do

  create_table "consults", force: :cascade do |t|
    t.string   "NomConsulta"
    t.text     "DesConsulta"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "consults", ["user_id"], name: "index_consults_on_user_id"

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
    t.string   "NomLib"
    t.datetime "fecLib"
    t.string   "AutLib"
    t.string   "TitLib"
    t.string   "EdiLib"
    t.string   "LugLib"
    t.integer  "id_edi"
    t.integer  "anioLib"
    t.string   "ObsLib"
    t.string   "Deslib"
    t.integer  "CantLib"
    t.string   "DisLib"
    t.string   "CodDewLib"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "NomEdi"
  end

  create_table "prestamos", force: :cascade do |t|
    t.datetime "FecSol"
    t.datetime "FecDev"
    t.datetime "FecPre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end

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

ActiveRecord::Schema.define(version: 20151007184431) do

  create_table "libros", force: :cascade do |t|
    t.string   "NumCodLib"
    t.datetime "fecLib"
    t.string   "AutLib"
    t.string   "TitLib"
    t.string   "EdLib"
    t.string   "LugLib"
    t.integer  "FK_Edi"
    t.integer  "anioLib"
    t.string   "ObsLib"
    t.text     "DesLib"
    t.integer  "CantLib"
    t.integer  "DisLib"
    t.string   "CodDewLib"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "role",            default: "estudiante"
    t.integer  "CedUs"
    t.string   "NomUs"
    t.string   "ApUnoUs"
    t.string   "ApDosUs"
    t.integer  "edadUs"
    t.integer  "FK_NivUs"
    t.datetime "dt_ingUs"
    t.datetime "dt_salUs"
    t.string   "SecUs"
    t.integer  "TelUs"
    t.integer  "FK_DirUs"
  end

end

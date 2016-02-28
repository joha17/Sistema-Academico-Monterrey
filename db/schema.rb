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

ActiveRecord::Schema.define(version: 20160220151541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "nomCategory"
    t.text     "desCategory"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "query_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["query_id"], name: "index_comments_on_query_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "descartes", force: :cascade do |t|
    t.text     "obserDesc"
    t.date     "fechaDesc"
    t.integer  "cantLibSug"
    t.integer  "cantLibDes"
    t.string   "autLibSug"
    t.string   "titLibSug"
    t.integer  "user_id"
    t.integer  "signatura_id"
    t.integer  "libro_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "descartes", ["libro_id"], name: "index_descartes_on_libro_id", using: :btree
  add_index "descartes", ["signatura_id"], name: "index_descartes_on_signatura_id", using: :btree
  add_index "descartes", ["user_id"], name: "index_descartes_on_user_id", using: :btree

  create_table "editorials", force: :cascade do |t|
    t.string   "NomEdi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "NomEven"
    t.text     "DesEven"
    t.date     "FecEvent"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "objEven"
    t.text     "respEven"
    t.text     "partEven"
  end

  add_index "eventos", ["user_id"], name: "index_eventos_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "nomItem"
    t.text     "desItem"
    t.integer  "canItem"
    t.integer  "user_id"
    t.integer  "place_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree
  add_index "items", ["place_id"], name: "index_items_on_place_id", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

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
    t.integer  "numInsc"
  end

  add_index "libros", ["editorial_id"], name: "index_libros_on_editorial_id", using: :btree

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
    t.string   "biblioteca"
    t.string   "nomSolic"
    t.string   "seccion"
    t.integer  "numInsc"
    t.integer  "signatura_id"
  end

  add_index "prestamos", ["libro_id"], name: "index_prestamos_on_libro_id", using: :btree
  add_index "prestamos", ["prestamo_estado_id"], name: "index_prestamos_on_prestamo_estado_id", using: :btree
  add_index "prestamos", ["user_id"], name: "index_prestamos_on_user_id", using: :btree

  create_table "queries", force: :cascade do |t|
    t.string   "NomCon"
    t.string   "DesCon"
    t.date     "FecCon"
    t.integer  "user_id"
    t.integer  "query_state_id", default: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "info_solic"
    t.string   "propCons"
    t.text     "libCons"
    t.string   "nomLec"
    t.string   "seccion"
    t.integer  "signatura_id"
  end

  add_index "queries", ["query_state_id"], name: "index_queries_on_query_state_id", using: :btree
  add_index "queries", ["user_id"], name: "index_queries_on_user_id", using: :btree

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

  add_index "roles", ["user_id"], name: "index_roles_on_user_id", using: :btree

  create_table "signaturas", force: :cascade do |t|
    t.string   "nomSig"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "{:index=>true, :foreign_key=>true}_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "role_id"
    t.text     "dirUs"
  end

  add_foreign_key "comments", "queries"
  add_foreign_key "comments", "users"
  add_foreign_key "descartes", "libros"
  add_foreign_key "descartes", "signaturas"
  add_foreign_key "descartes", "users"
  add_foreign_key "eventos", "users"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "places"
  add_foreign_key "items", "users"
  add_foreign_key "libros", "editorials"
  add_foreign_key "prestamos", "libros"
  add_foreign_key "prestamos", "prestamo_estados"
  add_foreign_key "prestamos", "users"
  add_foreign_key "queries", "query_states"
  add_foreign_key "queries", "users"
  add_foreign_key "roles", "users"
end

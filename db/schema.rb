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

ActiveRecord::Schema.define(version: 20160220084435) do

  create_table "categories", force: :cascade do |t|
    t.string   "nomCategory", limit: 255
    t.text     "desCategory", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.integer  "query_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["query_id"], name: "index_comments_on_query_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "descartes", force: :cascade do |t|
    t.text     "obserDesc",    limit: 65535
    t.date     "fechaDesc"
    t.integer  "cantLibSug",   limit: 4
    t.integer  "cantLibDes",   limit: 4
    t.string   "autLibSug",    limit: 255
    t.string   "titLibSug",    limit: 255
    t.integer  "user_id",      limit: 4
    t.integer  "signatura_id", limit: 4
    t.integer  "libro_id",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "descartes", ["libro_id"], name: "index_descartes_on_libro_id", using: :btree
  add_index "descartes", ["signatura_id"], name: "index_descartes_on_signatura_id", using: :btree
  add_index "descartes", ["user_id"], name: "index_descartes_on_user_id", using: :btree

  create_table "editorials", force: :cascade do |t|
    t.string   "NomEdi",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "NomEven",    limit: 255
    t.text     "DesEven",    limit: 65535
    t.date     "FecEvent"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "objEven",    limit: 65535
    t.text     "respEven",   limit: 65535
    t.text     "partEven",   limit: 65535
  end

  add_index "eventos", ["user_id"], name: "index_eventos_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "nomItem",     limit: 255
    t.text     "desItem",     limit: 65535
    t.integer  "canItem",     limit: 4
    t.integer  "user_id",     limit: 4
    t.integer  "place_id",    limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree
  add_index "items", ["place_id"], name: "index_items_on_place_id", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "libros", force: :cascade do |t|
    t.string   "TitLib",       limit: 255
    t.string   "AutLib",       limit: 255
    t.string   "EdicLib",      limit: 255
    t.integer  "AnioLib",      limit: 4
    t.datetime "FecLib"
    t.string   "LugLib",       limit: 255
    t.text     "ObsLib",       limit: 65535
    t.text     "DesLib",       limit: 65535
    t.integer  "CantLib",      limit: 4
    t.integer  "Disp",         limit: 4
    t.string   "CodDewLib",    limit: 255
    t.integer  "editorial_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "NomEdi",       limit: 255
    t.integer  "numInsc",      limit: 4
  end

  add_index "libros", ["editorial_id"], name: "index_libros_on_editorial_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "NomPlace",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "prestamo_estados", force: :cascade do |t|
    t.string   "nomEstPres", limit: 255
    t.text     "desEstPres", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "prestamos", force: :cascade do |t|
    t.date     "fecSol"
    t.date     "fecDev"
    t.integer  "user_id",            limit: 4
    t.integer  "libro_id",           limit: 4
    t.integer  "prestamo_estado_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "biblioteca",         limit: 255
    t.date     "vence"
    t.string   "nomSolic",           limit: 255
    t.string   "seccion",            limit: 255
    t.integer  "signatura_id",       limit: 4
  end

  add_index "prestamos", ["libro_id"], name: "index_prestamos_on_libro_id", using: :btree
  add_index "prestamos", ["prestamo_estado_id"], name: "index_prestamos_on_prestamo_estado_id", using: :btree
  add_index "prestamos", ["user_id"], name: "index_prestamos_on_user_id", using: :btree

  create_table "queries", force: :cascade do |t|
    t.string   "NomCon",         limit: 255
    t.string   "DesCon",         limit: 255
    t.date     "FecCon"
    t.integer  "user_id",        limit: 4
    t.integer  "query_state_id", limit: 4,     default: 1
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.text     "info_solic",     limit: 65535
    t.string   "propCons",       limit: 255
    t.text     "libCons",        limit: 65535
    t.string   "nomLec",         limit: 255
    t.string   "seccion",        limit: 255
    t.integer  "signatura_id",   limit: 4
  end

  add_index "queries", ["query_state_id"], name: "index_queries_on_query_state_id", using: :btree
  add_index "queries", ["user_id"], name: "index_queries_on_user_id", using: :btree

  create_table "query_states", force: :cascade do |t|
    t.string   "DeState",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nomRole",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "signaturas", force: :cascade do |t|
    t.string   "nomSig",                                limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "{:index=>true, :foreign_key=>true}_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              limit: 255
    t.string   "password_digest",    limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "CedUs",              limit: 4
    t.string   "NomUs",              limit: 255
    t.string   "ApUnoUs",            limit: 255
    t.string   "ApDosUs",            limit: 255
    t.integer  "edadUs",             limit: 4
    t.integer  "FK_NivUs",           limit: 4
    t.datetime "dt_ingUs"
    t.datetime "dt_salUs"
    t.string   "SecUs",              limit: 255
    t.integer  "TelUs",              limit: 4
    t.integer  "FK_DirUs",           limit: 4
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.integer  "role_id",            limit: 4
    t.integer  "user_id",            limit: 4
    t.text     "dirUs",              limit: 65535
  end

  add_foreign_key "comments", "queries"
  add_foreign_key "comments", "users"
end

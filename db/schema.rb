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

ActiveRecord::Schema.define(version: 20170307184142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armas", force: :cascade do |t|
    t.string   "arma_nombre"
    t.integer  "arma_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["arma_nombre"], name: "index_armas_on_arma_nombre", unique: true, using: :btree
  end

  create_table "condicions", force: :cascade do |t|
    t.string   "condicion_nombre"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["condicion_nombre"], name: "index_condicions_on_condicion_nombre", unique: true, using: :btree
  end

  create_table "delitos", force: :cascade do |t|
    t.string   "delito_nombre"
    t.integer  "delito_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["delito_nombre"], name: "index_delitos_on_delito_nombre", unique: true, using: :btree
  end

  create_table "escolaridads", force: :cascade do |t|
    t.string   "escolaridad_nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["escolaridad_nombre"], name: "index_escolaridads_on_escolaridad_nombre", unique: true, using: :btree
  end

  create_table "estadoscivils", force: :cascade do |t|
    t.string   "estadocivil_nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["estadocivil_nombre"], name: "index_estadoscivils_on_estadocivil_nombre", unique: true, using: :btree
  end

  create_table "etnia", force: :cascade do |t|
    t.string   "etnia_nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["etnia_nombre"], name: "index_etnia_on_etnia_nombre", unique: true, using: :btree
  end

  create_table "generos", force: :cascade do |t|
    t.string   "genero_nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["genero_nombre"], name: "index_generos_on_genero_nombre", unique: true, using: :btree
  end

  create_table "localidads", force: :cascade do |t|
    t.string   "localidad_nombre"
    t.integer  "localidad_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "parentescos", force: :cascade do |t|
    t.string   "parentesco_nombre"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["parentesco_nombre"], name: "index_parentescos_on_parentesco_nombre", unique: true, using: :btree
  end

  create_table "sitios", force: :cascade do |t|
    t.string   "sitio_nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["sitio_nombre"], name: "index_sitios_on_sitio_nombre", unique: true, using: :btree
  end

end

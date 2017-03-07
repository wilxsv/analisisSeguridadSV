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

ActiveRecord::Schema.define(version: 20170307230934) do

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

  create_table "estadocivils", force: :cascade do |t|
    t.string   "estadocivil_nombre"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["estadocivil_nombre"], name: "index_estadocivils_on_estadocivil_nombre", unique: true, using: :btree
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

  create_table "hechos", force: :cascade do |t|
    t.datetime "hecho_fecha"
    t.datetime "hecho_denuncia"
    t.datetime "hecho_registro"
    t.boolean  "hecho_reincidencia"
    t.integer  "persona_id"
    t.integer  "hecho_agresor"
    t.integer  "condicion_id"
    t.integer  "parentesco_id"
    t.integer  "delito_id"
    t.integer  "sitio_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.float    "hecho_longitud"
    t.float    "hecho_latitud"
    t.index ["condicion_id"], name: "index_hechos_on_condicion_id", using: :btree
    t.index ["delito_id"], name: "index_hechos_on_delito_id", using: :btree
    t.index ["parentesco_id"], name: "index_hechos_on_parentesco_id", using: :btree
    t.index ["persona_id"], name: "index_hechos_on_persona_id", using: :btree
    t.index ["sitio_id"], name: "index_hechos_on_sitio_id", using: :btree
  end

  create_table "localidads", force: :cascade do |t|
    t.string   "localidad_nombre"
    t.integer  "localidad_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.float    "localidad_longitud"
    t.float    "localidad_latitud"
  end

  create_table "parentescos", force: :cascade do |t|
    t.string   "parentesco_nombre"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["parentesco_nombre"], name: "index_parentescos_on_parentesco_nombre", unique: true, using: :btree
  end

  create_table "personas", force: :cascade do |t|
    t.integer  "persona_edad"
    t.text     "persona_direccion"
    t.boolean  "persona_embarazo"
    t.boolean  "persona_discapacidad"
    t.integer  "genero_id"
    t.integer  "etnia_id"
    t.integer  "estadocivil_id"
    t.integer  "escolaridad_id"
    t.integer  "localidad_id"
    t.integer  "arma_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.float    "persona_longitud"
    t.float    "persona_latitud"
    t.index ["arma_id"], name: "index_personas_on_arma_id", using: :btree
    t.index ["escolaridad_id"], name: "index_personas_on_escolaridad_id", using: :btree
    t.index ["estadocivil_id"], name: "index_personas_on_estadocivil_id", using: :btree
    t.index ["etnia_id"], name: "index_personas_on_etnia_id", using: :btree
    t.index ["genero_id"], name: "index_personas_on_genero_id", using: :btree
    t.index ["localidad_id"], name: "index_personas_on_localidad_id", using: :btree
  end

  create_table "sitios", force: :cascade do |t|
    t.string   "sitio_nombre"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",   default: '2017-03-07 16:25:58', null: false
    t.index ["sitio_nombre"], name: "index_sitios_on_sitio_nombre", unique: true, using: :btree
  end

  add_foreign_key "hechos", "condicions"
  add_foreign_key "hechos", "delitos"
  add_foreign_key "hechos", "parentescos"
  add_foreign_key "hechos", "personas"
  add_foreign_key "hechos", "sitios"
  add_foreign_key "personas", "armas"
  add_foreign_key "personas", "escolaridads"
  add_foreign_key "personas", "estadocivils"
  add_foreign_key "personas", "etnia", column: "etnia_id"
  add_foreign_key "personas", "generos"
  add_foreign_key "personas", "localidads"
end

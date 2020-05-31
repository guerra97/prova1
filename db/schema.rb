# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_30_140910) do

  create_table "carrelli", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "linea_ordini", force: :cascade do |t|
    t.integer "prodotto_id", null: false
    t.integer "carrello_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "qta"
    t.index ["carrello_id"], name: "index_linea_ordini_on_carrello_id"
    t.index ["prodotto_id"], name: "index_linea_ordini_on_prodotto_id"
  end

  create_table "prodotti", force: :cascade do |t|
    t.string "nome"
    t.decimal "prezzo"
    t.string "descrizione"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prodottos", force: :cascade do |t|
    t.string "nome"
    t.decimal "prezzo"
    t.string "descrizione"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utenti", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "linea_ordini", "carrelli"
  add_foreign_key "linea_ordini", "prodotti"
end

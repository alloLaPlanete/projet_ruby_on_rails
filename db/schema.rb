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

ActiveRecord::Schema.define(version: 20170628180145) do

  create_table "deviseusers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "nom"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "deviseusers", ["email"], name: "index_deviseusers_on_email", unique: true
  add_index "deviseusers", ["reset_password_token"], name: "index_deviseusers_on_reset_password_token", unique: true

  create_table "organisme_referents", force: :cascade do |t|
    t.string   "nomOrganisme"
    t.integer  "adresseNoCivique"
    t.string   "adresseRue"
    t.string   "adresseVille"
    t.string   "adresseProvince"
    t.string   "adresseEtat"
    t.string   "adresseCodePostal"
    t.string   "telephoneBureau"
    t.string   "adresseTelecopie"
    t.string   "courriel"
    t.string   "siteWeb"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "deviseuser_id"
  end

  add_index "organisme_referents", ["deviseuser_id"], name: "index_organisme_referents_on_deviseuser_id"

  create_table "organismes", force: :cascade do |t|
    t.string   "nom"
    t.string   "adresse"
    t.string   "telephone"
    t.string   "courriel"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "deviseuser_id"
  end

  add_index "organismes", ["deviseuser_id"], name: "index_organismes_on_deviseuser_id"

  create_table "usagers", force: :cascade do |t|
    t.string   "courriel"
    t.string   "nom"
    t.string   "motPasse"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "deviseuser_id"
  end

  add_index "usagers", ["deviseuser_id"], name: "index_usagers_on_deviseuser_id"

end

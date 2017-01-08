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

ActiveRecord::Schema.define(version: 20170108103441) do

  create_table "diagnozas", force: true do |t|
    t.string   "typ"
    t.string   "opis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kartoteks", force: true do |t|
    t.integer  "pacjent_id"
    t.integer  "lekarz_id"
    t.integer  "wizyt_id"
    t.integer  "diagnoza_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lekarzs", force: true do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "specjalizacja"
    t.string   "nrTelefonu"
    t.string   "email"
    t.string   "haslo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacjents", force: true do |t|
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "pesel"
    t.string   "nrtelefonu"
    t.string   "email"
    t.string   "haslo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wizyts", force: true do |t|
    t.datetime "data"
    t.integer  "lekarz_id"
    t.integer  "pacjent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

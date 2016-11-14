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

ActiveRecord::Schema.define(version: 20161114185810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer  "portfolio_id"
    t.integer  "category_id"
    t.text     "description"
    t.datetime "create_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category_id"], name: "index_albums_on_category_id", using: :btree
    t.index ["portfolio_id"], name: "index_albums_on_portfolio_id", using: :btree
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photographer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photographer_id"], name: "index_bookmarks_on_photographer_id", using: :btree
    t.index ["user_id"], name: "index_bookmarks_on_user_id", using: :btree
  end

  create_table "busy_dates", force: :cascade do |t|
    t.integer  "photographer_id"
    t.text     "dates"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photographer_id"], name: "index_busy_dates_on_photographer_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "unit_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_images_on_album_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_locations_on_country_id", using: :btree
  end

  create_table "photographers", force: :cascade do |t|
    t.text     "busy_dates"
    t.integer  "user_account_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_account_id"], name: "index_photographers_on_user_account_id", using: :btree
  end

  create_table "portfolios", force: :cascade do |t|
    t.integer  "photographer_id"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photographer_id"], name: "index_portfolios_on_photographer_id", using: :btree
  end

  create_table "price_rates", force: :cascade do |t|
    t.integer  "photographer_id"
    t.integer  "category_id"
    t.float    "unit_rate"
    t.float    "travel_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["category_id"], name: "index_price_rates_on_category_id", using: :btree
    t.index ["photographer_id"], name: "index_price_rates_on_photographer_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photographer_id"
    t.float    "score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photographer_id"], name: "index_ratings_on_photographer_id", using: :btree
    t.index ["user_id"], name: "index_ratings_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photographer_id"
    t.text     "content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photographer_id"], name: "index_reviews_on_photographer_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "shooting_locations", force: :cascade do |t|
    t.integer  "photographer_id"
    t.integer  "location_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["location_id"], name: "index_shooting_locations_on_location_id", using: :btree
    t.index ["photographer_id"], name: "index_shooting_locations_on_photographer_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "albums", "categories"
  add_foreign_key "albums", "portfolios"
  add_foreign_key "bookmarks", "photographers"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "busy_dates", "photographers"
  add_foreign_key "images", "albums"
  add_foreign_key "locations", "countries"
  add_foreign_key "portfolios", "photographers"
  add_foreign_key "price_rates", "categories"
  add_foreign_key "price_rates", "photographers"
  add_foreign_key "ratings", "photographers"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "photographers"
  add_foreign_key "reviews", "users"
  add_foreign_key "shooting_locations", "locations"
  add_foreign_key "shooting_locations", "photographers"
end

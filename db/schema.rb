# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_03_203855) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "rec_lis_bookmarks", force: :cascade do |t|
    t.bigint "rec_lis_list_id", null: false
    t.bigint "rec_lis_recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment"
    t.index ["rec_lis_list_id"], name: "index_rec_lis_bookmarks_on_rec_lis_list_id"
    t.index ["rec_lis_recipe_id"], name: "index_rec_lis_bookmarks_on_rec_lis_recipe_id"
  end

  create_table "rec_lis_lists", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rec_lis_user_id", null: false
    t.string "comment"
    t.index ["rec_lis_user_id"], name: "index_rec_lis_lists_on_rec_lis_user_id"
  end

  create_table "rec_lis_recipes", force: :cascade do |t|
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.string "comment"
    t.bigint "rec_lis_user_id", null: false
    t.index ["rec_lis_user_id"], name: "index_rec_lis_recipes_on_rec_lis_user_id"
  end

  create_table "rec_lis_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_rec_lis_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_rec_lis_users_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wat_lis_bookmarks", force: :cascade do |t|
    t.string "comment"
    t.bigint "wat_lis_movie_id", null: false
    t.bigint "wat_lis_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wat_lis_list_id"], name: "index_wat_lis_bookmarks_on_wat_lis_list_id"
    t.index ["wat_lis_movie_id"], name: "index_wat_lis_bookmarks_on_wat_lis_movie_id"
  end

  create_table "wat_lis_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wat_lis_movies", force: :cascade do |t|
    t.string "title"
    t.string "overview"
    t.string "poster_url"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "rec_lis_bookmarks", "rec_lis_lists"
  add_foreign_key "rec_lis_bookmarks", "rec_lis_recipes"
  add_foreign_key "rec_lis_lists", "rec_lis_users"
  add_foreign_key "rec_lis_recipes", "rec_lis_users"
  add_foreign_key "wat_lis_bookmarks", "wat_lis_lists"
  add_foreign_key "wat_lis_bookmarks", "wat_lis_movies"
end

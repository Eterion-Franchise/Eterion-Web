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

ActiveRecord::Schema[8.0].define(version: 2025_01_21_174043) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "lvl_req"
    t.integer "whims_req"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaign_characters", force: :cascade do |t|
    t.integer "campaign_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_characters_on_campaign_id"
    t.index ["character_id"], name: "index_campaign_characters_on_character_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.text "agenda"
    t.text "what_happened"
    t.integer "saga_id", null: false
    t.date "date_played"
    t.integer "duration_hrs"
    t.integer "duration_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["saga_id"], name: "index_campaigns_on_saga_id"
  end

  create_table "character_whims_of_fates", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "whims_of_fate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_whims_of_fates_on_character_id"
    t.index ["whims_of_fate_id"], name: "index_character_whims_of_fates_on_whims_of_fate_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "background"
    t.integer "lvl"
    t.integer "gold"
    t.integer "player_class_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_class_id"], name: "index_characters_on_player_class_id"
  end

  create_table "class_path_abilities", force: :cascade do |t|
    t.integer "player_class_id", null: false
    t.integer "player_class_path_id", null: false
    t.integer "ability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_class_path_abilities_on_ability_id"
    t.index ["player_class_id"], name: "index_class_path_abilities_on_player_class_id"
    t.index ["player_class_path_id"], name: "index_class_path_abilities_on_player_class_path_id"
  end

  create_table "player_class_paths", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sagas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "date_started"
    t.date "date_finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_characters", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_user_characters_on_character_id"
    t.index ["user_id"], name: "index_user_characters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_with_tag"
    t.boolean "is_gm"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "whims_of_fates", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "resolve_up"
    t.text "resolve_down"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "campaign_characters", "campaigns"
  add_foreign_key "campaign_characters", "characters"
  add_foreign_key "campaigns", "sagas"
  add_foreign_key "character_whims_of_fates", "characters"
  add_foreign_key "character_whims_of_fates", "whims_of_fates"
  add_foreign_key "characters", "player_classes"
  add_foreign_key "class_path_abilities", "abilities"
  add_foreign_key "class_path_abilities", "player_class_paths"
  add_foreign_key "class_path_abilities", "player_classes"
  add_foreign_key "user_characters", "characters"
  add_foreign_key "user_characters", "users"
end

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

ActiveRecord::Schema.define(version: 2019_03_12_023433) do

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "description"
    t.string "number"
    t.string "complement"
    t.string "zipcode"
    t.string "district"
    t.string "street"
    t.bigint "city_id"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "ibge"
    t.bigint "state_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["latitude", "longitude"], name: "index_cities_on_latitude_and_longitude"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.date "admission_date"
    t.bigint "sex_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.date "resignation_date"
    t.index ["address_id"], name: "index_collaborators_on_address_id"
    t.index ["sex_id"], name: "index_collaborators_on_sex_id"
    t.index ["user_id"], name: "index_collaborators_on_user_id"
  end

  create_table "deliverer_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliverers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "admission_date"
    t.date "resignation_date"
    t.bigint "sex_id"
    t.bigint "deliverer_status_id"
    t.bigint "estabilishment_id"
    t.bigint "type_deliverer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.bigint "vehicle_id"
    t.index ["address_id"], name: "index_deliverers_on_address_id"
    t.index ["deliverer_status_id"], name: "index_deliverers_on_deliverer_status_id"
    t.index ["estabilishment_id"], name: "index_deliverers_on_estabilishment_id"
    t.index ["sex_id"], name: "index_deliverers_on_sex_id"
    t.index ["type_deliverer_id"], name: "index_deliverers_on_type_deliverer_id"
    t.index ["user_id"], name: "index_deliverers_on_user_id"
    t.index ["vehicle_id"], name: "index_deliverers_on_vehicle_id"
  end

  create_table "estabilishments", force: :cascade do |t|
    t.string "name"
    t.string "state_registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legal_customers", force: :cascade do |t|
    t.string "social_name"
    t.string "fantasy_name"
    t.string "email"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_legal_customers_on_address_id"
    t.index ["user_id"], name: "index_legal_customers_on_user_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "icon"
    t.boolean "published"
    t.integer "position"
    t.string "target"
    t.string "permission"
    t.string "permission_check"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "menu_item_id"
    t.index ["menu_item_id"], name: "index_menu_items_on_menu_item_id"
  end

  create_table "ncms", force: :cascade do |t|
    t.decimal "code"
    t.string "description"
    t.string "unity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_customers", force: :cascade do |t|
    t.bigint "sex_id"
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.date "birth_date"
    t.string "email"
    t.string "registration"
    t.string "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_physical_customers_on_address_id"
    t.index ["sex_id"], name: "index_physical_customers_on_sex_id"
    t.index ["user_id"], name: "index_physical_customers_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.decimal "canister"
    t.string "short_description"
    t.string "code_anp"
    t.bigint "ncm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ncm_id"], name: "index_products_on_ncm_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.string "ibge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_legals", force: :cascade do |t|
    t.string "social_name"
    t.string "fantasy_name"
    t.string "state_registration"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_supplier_legals_on_address_id"
    t.index ["user_id"], name: "index_supplier_legals_on_user_id"
  end

  create_table "supplier_physicals", force: :cascade do |t|
    t.string "name"
    t.string "identity"
    t.string "cpf"
    t.bigint "sex_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_supplier_physicals_on_address_id"
    t.index ["sex_id"], name: "index_supplier_physicals_on_sex_id"
    t.index ["user_id"], name: "index_supplier_physicals_on_user_id"
  end

  create_table "type_deliverers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.text "tokens"
    t.string "uuid"
    t.string "generated_password"
    t.jsonb "social_data"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
    t.index ["uuid"], name: "index_users_on_uuid", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "description"
    t.string "color"
    t.string "mark"
    t.string "mileage"
    t.string "plate"
    t.string "state_federation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "deliverer_id"
    t.index ["deliverer_id"], name: "index_vehicles_on_deliverer_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "cities", "states"
  add_foreign_key "collaborators", "addresses"
  add_foreign_key "collaborators", "sexes"
  add_foreign_key "collaborators", "users"
  add_foreign_key "deliverers", "addresses"
  add_foreign_key "deliverers", "deliverer_statuses"
  add_foreign_key "deliverers", "estabilishments"
  add_foreign_key "deliverers", "sexes"
  add_foreign_key "deliverers", "type_deliverers"
  add_foreign_key "deliverers", "users"
  add_foreign_key "deliverers", "vehicles"
  add_foreign_key "legal_customers", "addresses"
  add_foreign_key "legal_customers", "users"
  add_foreign_key "menu_items", "menu_items"
  add_foreign_key "physical_customers", "addresses"
  add_foreign_key "physical_customers", "sexes"
  add_foreign_key "physical_customers", "users"
  add_foreign_key "products", "ncms"
  add_foreign_key "supplier_legals", "addresses"
  add_foreign_key "supplier_legals", "users"
  add_foreign_key "supplier_physicals", "addresses"
  add_foreign_key "supplier_physicals", "sexes"
  add_foreign_key "supplier_physicals", "users"
  add_foreign_key "vehicles", "deliverers"
end

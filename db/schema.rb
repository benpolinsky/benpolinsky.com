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

ActiveRecord::Schema.define(version: 20160713150414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "bp_custom_fields_abstract_resources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bp_custom_fields_appearances", force: :cascade do |t|
    t.string   "resource"
    t.string   "resource_id"
    t.boolean  "appears",           default: true
    t.integer  "row_order"
    t.integer  "group_template_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["group_template_id"], name: "bpf_a_gt", using: :btree
  end

  create_table "bp_custom_fields_field_templates", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.integer  "group_template_id"
    t.integer  "field_type"
    t.string   "min"
    t.string   "max"
    t.boolean  "required"
    t.text     "instructions"
    t.text     "default_value"
    t.text     "placeholder_text"
    t.string   "prepend"
    t.string   "append"
    t.integer  "rows"
    t.string   "date_format"
    t.string   "time_format"
    t.string   "accepted_file_types"
    t.string   "toolbar"
    t.text     "choices"
    t.boolean  "multiple"
    t.integer  "parent_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "row_order"
    t.index ["group_template_id"], name: "bpf_ft_gt", using: :btree
  end

  create_table "bp_custom_fields_fields", force: :cascade do |t|
    t.integer  "field_template_id"
    t.integer  "group_id"
    t.text     "value"
    t.string   "file"
    t.integer  "parent_id"
    t.boolean  "container"
    t.integer  "row_order"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["field_template_id"], name: "bpf_f_ft", using: :btree
    t.index ["group_id"], name: "bpf_f_g", using: :btree
  end

  create_table "bp_custom_fields_group_templates", force: :cascade do |t|
    t.string   "name"
    t.boolean  "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bp_custom_fields_groups", force: :cascade do |t|
    t.integer  "group_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "groupable_type"
    t.integer  "groupable_id"
    t.index ["group_template_id"], name: "bpf_fg_gt", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image"
    t.string   "subtitle"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug"
    t.integer  "row_order",  default: 0
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "client"
    t.string   "site_url"
    t.text     "description"
    t.string   "image"
    t.string   "public_repo"
    t.datetime "creation_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "slug"
    t.integer  "row_order",     default: 0
  end

end

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

ActiveRecord::Schema[7.0].define(version: 2023_01_29_173328) do
  create_table "Projects_Tags", id: false, force: :cascade do |t|
    t.integer "Project_id", null: false
    t.integer "Tag_id", null: false
    t.index ["Project_id"], name: "index_Projects_Tags_on_project_id"
    t.index ["Tag_id"], name: "index_Projects_Tags_on_tag_id"
  end

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.string "certificate_link"
    t.string "issue_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_skills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_units", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "institution"
    t.date "start"
    t.date "end"
    t.string "name"
    t.string "major"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "role_id"
    t.string "title"
    t.string "location"
    t.string "company_name"
    t.string "company_link"
    t.string "company_link_image"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_experiences_on_role_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_projects", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "language_id", null: false
    t.index ["project_id", "language_id"], name: "index_languages_projects_on_project_id_and_language_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "project_id"
    t.string "name"
    t.string "email"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_messages_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "description"
    t.date "project_start"
    t.date "project_end"
    t.string "github_link"
    t.string "live_link"
    t.boolean "status"
    t.string "field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects_skills", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "skill_id", null: false
    t.index ["project_id", "skill_id"], name: "index_projects_skills_on_project_id_and_skill_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "experience_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_roles_on_experience_id"
  end

  create_table "skill_certifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "experiences", "roles"
  add_foreign_key "messages", "projects"
  add_foreign_key "roles", "experiences"
end

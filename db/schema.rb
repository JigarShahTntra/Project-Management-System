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
# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_210_722_064_851) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'clients', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'name'
    t.string 'phone'
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'employees_roles', force: :cascade do |t|
    t.bigint 'employee_id'
    t.bigint 'role_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['employee_id'], name: 'index_employees_roles_on_employee_id'
    t.index ['role_id'], name: 'index_employees_roles_on_role_id'
  end

  create_table 'employees_teams', force: :cascade do |t|
    t.bigint 'team_id'
    t.bigint 'employee_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['employee_id'], name: 'index_employees_teams_on_employee_id'
    t.index ['team_id'], name: 'index_employees_teams_on_team_id'
  end

  create_table 'employees_technologies', force: :cascade do |t|
    t.bigint 'technology_id'
    t.bigint 'employee_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['employee_id'], name: 'index_employees_technologies_on_employee_id'
    t.index ['technology_id'], name: 'index_employees_technologies_on_technology_id'
  end

  create_table 'financials', force: :cascade do |t|
    t.string 'bank_name'
    t.string 'ifsc'
    t.string 'micr'
    t.text 'bank_address'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'profile_id', null: false
    t.index ['profile_id'], name: 'index_financials_on_profile_id'
  end

  create_table 'notifications', force: :cascade do |t|
    t.bigint 'subject_id'
    t.bigint 'project_user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['project_user_id'], name: 'index_notifications_on_project_user_id'
    t.index ['subject_id'], name: 'index_notifications_on_subject_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'orders_statuses', force: :cascade do |t|
    t.bigint 'order_id'
    t.bigint 'status_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['order_id'], name: 'index_orders_statuses_on_order_id'
    t.index ['status_id'], name: 'index_orders_statuses_on_status_id'
  end

  create_table 'profiles', force: :cascade do |t|
    t.string 'prof_type'
    t.integer 'experience'
    t.string 'position'
    t.string 'aadhar_number'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'profilable_type', null: false
    t.bigint 'profilable_id', null: false
    t.index %w[profilable_type profilable_id], name: 'index_profiles_on_profilable'
  end

  create_table 'project_employees', force: :cascade do |t|
    t.string 'responsibilities'
    t.bigint 'employee_id'
    t.bigint 'project_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['employee_id'], name: 'index_project_employees_on_employee_id'
    t.index ['project_id'], name: 'index_project_employees_on_project_id'
  end

  create_table 'project_users', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'project_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['project_id'], name: 'index_project_users_on_project_id'
    t.index ['user_id'], name: 'index_project_users_on_user_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'name'
    t.string 'duration'
    t.string 'status'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'team_id', null: false
    t.bigint 'client_id', null: false
    t.index ['client_id'], name: 'index_projects_on_client_id'
    t.index ['team_id'], name: 'index_projects_on_team_id'
  end

  create_table 'revenues', force: :cascade do |t|
    t.decimal 'revenue_percent', precision: 4, scale: 2
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'project_id', null: false
    t.index ['project_id'], name: 'index_revenues_on_project_id'
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'role'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'roles_users', force: :cascade do |t|
    t.bigint 'role_id'
    t.bigint 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['role_id'], name: 'index_roles_users_on_role_id'
    t.index ['user_id'], name: 'index_roles_users_on_user_id'
  end

  create_table 'statuses', force: :cascade do |t|
    t.string 'status'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'subjects', force: :cascade do |t|
    t.integer 'index'
    t.string 'notification_type'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'teams', force: :cascade do |t|
    t.string 'responsibilities'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'technologies', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'user_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'invitation_token'
    t.datetime 'invitation_created_at'
    t.datetime 'invitation_sent_at'
    t.datetime 'invitation_accepted_at'
    t.integer 'invitation_limit'
    t.string 'invited_by_type'
    t.bigint 'invited_by_id'
    t.integer 'invitations_count', default: 0
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['invitation_token'], name: 'index_users_on_invitation_token', unique: true
    t.index ['invited_by_id'], name: 'index_users_on_invited_by_id'
    t.index %w[invited_by_type invited_by_id], name: 'index_users_on_invited_by'
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'financials', 'profiles'
  add_foreign_key 'projects', 'clients'
  add_foreign_key 'projects', 'teams'
  add_foreign_key 'revenues', 'projects'
end

# frozen_string_literal: true

# create-role-user-migration
class CreateRolesUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :roles_users do |t|
      t.belongs_to :role
      t.belongs_to :user
      t.timestamps
    end
  end
end

# frozen_string_literal: true

# create-role-model-migration
class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :role
      t.timestamps
    end
  end
end

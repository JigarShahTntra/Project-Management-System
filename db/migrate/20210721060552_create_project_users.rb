# frozen_string_literal: true

# create-project-user-migration
class CreateProjectUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :project_users do |t|
      t.belongs_to :user
      t.belongs_to :project
      t.timestamps
    end
  end
end

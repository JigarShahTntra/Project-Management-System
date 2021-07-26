# frozen_string_literal: true

# create-notification-migration
class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.belongs_to :subject
      t.belongs_to :project_user
      t.timestamps
    end
  end
end

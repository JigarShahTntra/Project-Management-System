# frozen_string_literal: true

# create-project-migration
class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :duration
      t.string :status
      t.timestamps
    end
  end
end

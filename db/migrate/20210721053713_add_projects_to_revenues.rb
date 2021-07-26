# frozen_string_literal: true

# add-project-to-revenues-migration
class AddProjectsToRevenues < ActiveRecord::Migration[6.1]
  def change
    add_reference :revenues, :project, null: false, foreign_key: true
  end
end

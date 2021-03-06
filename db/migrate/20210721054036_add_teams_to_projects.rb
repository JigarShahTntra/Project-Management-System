# frozen_string_literal: true

# add-teams-to-projects-migration
class AddTeamsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :team, null: false, foreign_key: true
  end
end

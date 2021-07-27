# frozen_string_literal: true

# add-clients-to-projects-migration
class AddClientsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :client, null: false, foreign_key: true
  end
end

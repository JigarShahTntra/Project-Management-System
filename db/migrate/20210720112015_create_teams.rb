# frozen_string_literal: true

# create-team-migration
class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :responsibilities
      t.timestamps
    end
  end
end

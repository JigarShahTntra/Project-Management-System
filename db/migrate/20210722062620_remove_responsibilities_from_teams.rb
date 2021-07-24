class RemoveResponsibilitiesFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column :teams, :responsibilities, :string
  end
end

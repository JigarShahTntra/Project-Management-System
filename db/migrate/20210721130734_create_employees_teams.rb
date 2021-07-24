class CreateEmployeesTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :employees_teams do |t|
      t.belongs_to :team
      t.belongs_to :employee

      t.timestamps
    end
  end
end

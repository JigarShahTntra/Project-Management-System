class CreateProjectEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :project_employees do |t|
      t.string :responsibilities
     
      t.belongs_to :employee
      t.belongs_to :project

      t.timestamps
    end
  end
end

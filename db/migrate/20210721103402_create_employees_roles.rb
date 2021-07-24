class CreateEmployeesRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :employees_roles do |t|
      t.belongs_to :employee
      t.belongs_to :role
      t.timestamps
    end
  end
end

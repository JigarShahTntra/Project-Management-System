class RenameProjectEmployeeToEmployeeProject < ActiveRecord::Migration[6.1]
  def change
    rename_table('project_employees', 'employee_projects')
  end
end

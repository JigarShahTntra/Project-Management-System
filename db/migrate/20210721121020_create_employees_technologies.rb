class CreateEmployeesTechnologies < ActiveRecord::Migration[6.1]
  def change
    create_table :employees_technologies do |t|
      t.belongs_to :technology
      t.belongs_to :employee

      t.timestamps
    end
  end
end

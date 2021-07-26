# frozen_string_literal: true

# create-employee-migration
class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.timestamps
    end
  end
end

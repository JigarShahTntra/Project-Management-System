# frozen_string_literal: true

# create-revenues-migration
class CreateRevenues < ActiveRecord::Migration[6.1]
  def change
    create_table :revenues do |t|
      t.decimal :revenue_percent, precision: 4, scale: 2
      t.timestamps
    end
  end
end

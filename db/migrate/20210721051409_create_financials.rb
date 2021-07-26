# frozen_string_literal: true

# create-financial-migration
class CreateFinancials < ActiveRecord::Migration[6.1]
  def change
    create_table :financials do |t|
      t.string :bank_name
      t.string :ifsc
      t.string :micr
      t.text :bank_address
      t.timestamps
    end
  end
end

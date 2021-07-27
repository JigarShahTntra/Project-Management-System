# frozen_string_literal: true

# create-profile-to-financial-migration
class AddProfileToFinancial < ActiveRecord::Migration[6.1]
  def change
    add_reference :financials, :profile, null: false, foreign_key: true
  end
end

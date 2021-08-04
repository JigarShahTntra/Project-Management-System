class AddaccountNumberTofinancials < ActiveRecord::Migration[6.1]
  def change
     add_column :financials, :account_number, :bigint
  end
end

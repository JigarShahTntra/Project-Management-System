class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :prof_type
      t.integer :experience
      t.string :position
      t.string :aadhar_number

      t.timestamps
    end
  end
end

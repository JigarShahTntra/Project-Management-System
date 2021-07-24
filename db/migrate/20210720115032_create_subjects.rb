class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.integer :index
      t.string :notification_type

      t.timestamps
    end
  end
end

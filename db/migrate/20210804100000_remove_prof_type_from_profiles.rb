class RemoveProfTypeFromProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :prof_type, :string
  end
end

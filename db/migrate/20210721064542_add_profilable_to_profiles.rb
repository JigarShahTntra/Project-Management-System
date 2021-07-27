# frozen_string_literal: true

# add-profilable-to-profiles-migration
class AddProfilableToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :profilable, polymorphic: true, null: false
  end
end

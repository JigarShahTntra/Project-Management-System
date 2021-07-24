# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :profilable, polymorphic: true
  has_one :financial
end

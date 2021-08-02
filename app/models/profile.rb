# frozen_string_literal: true

# Profile-model

class Profile < ApplicationRecord
  belongs_to :profilable, polymorphic: true
  has_one :financial
  accepts_nested_attributes_for :financial

  # Validation

  validates :experience, :position, :aadhar_number, presence: true
  validates :aadhar_number, numericality:
                          { only_integer: true }, length: { is: 12 }
  validates :experience, numericality: { only_integer: true }
end

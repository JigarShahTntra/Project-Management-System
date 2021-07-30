# frozen_string_literal: true

# Financial-model
class Financial < ApplicationRecord
  belongs_to :profile
  validates :bank_name, :ifsc, :micr, :bank_address, presence: true
  validates :ifsc, length: { is: 11 }
  validates :micr, length: { is: 9 }
end

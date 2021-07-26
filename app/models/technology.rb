# frozen_string_literal: true

# Technology-model
class Technology < ApplicationRecord
  has_and_belongs_to_many :employees
end

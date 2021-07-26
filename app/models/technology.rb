# frozen_string_literal: true

# technology-model
class Technology < ApplicationRecord
  has_and_belongs_to_many :employees
end

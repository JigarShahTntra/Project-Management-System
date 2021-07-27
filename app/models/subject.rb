# frozen_string_literal: true

# Subject-model
class Subject < ApplicationRecord
  has_many :notifications
  has_many :project_users, through: :notifications
end

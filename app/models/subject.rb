# frozen_string_literal: true

# subject-model
class Subject < ApplicationRecord
  has_many :notifications
  has_many :project_users, through: :notifications
end

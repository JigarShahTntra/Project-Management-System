# frozen_string_literal: true

class Subject < ApplicationRecord
    has_many :notifications
    has_many :project_users , through: :notifications
end

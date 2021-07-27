# frozen_string_literal: true

# Notification-model
class Notification < ApplicationRecord
  belongs_to :subject
  belongs_to :project_user
end

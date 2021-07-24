# frozen_string_literal: true

class ProjectUser < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :notifications
  has_many :subjects, through: :notifications
end

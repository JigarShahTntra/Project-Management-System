# frozen_string_literal: true

# project-model
class Project < ApplicationRecord
  has_one_attached :file
  has_many :project_users
  has_many :users, through: :project_users
  has_one :revenue
  belongs_to :team
  belongs_to :client
  has_many :project_employees
  has_many :employees, through: :project_employees
end

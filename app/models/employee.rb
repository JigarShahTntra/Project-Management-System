# frozen_string_literal: true

# Employee-model
class Employee < ApplicationRecord
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :technologies
  has_and_belongs_to_many :teams
  has_one :profile, as: :profilable
  has_many :project_employees
  has_many :projects, through: :project_employees
end

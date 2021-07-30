# frozen_string_literal: true

# Employee-model
class Employee < ApplicationRecord
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :technologies
  has_and_belongs_to_many :teams
  has_one :profile, as: :profilable
  has_many :project_employees
  has_many :projects, through: :project_employees
  accepts_nested_attributes_for :profile
  delegate :financial, to: :profile
  # Validations
  validates :name, :phone, :email, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/}
  validates :phone, numericality: { only_integer: true }, length: { is: 10 }
end

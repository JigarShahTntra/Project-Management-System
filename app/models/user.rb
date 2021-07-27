# frozen_string_literal: true

# User-model
class User < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable
  has_and_belongs_to_many :roles
  has_many :project_users
  has_many :projects, through: :project_users
  has_one :profile, as: :profilable
end

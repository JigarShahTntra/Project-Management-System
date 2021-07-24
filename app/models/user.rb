# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable
  has_and_belongs_to_many :roles
  has_many :project_users
  has_many :projects, through: :project_users
  has_one :profile, as: :profilable
end

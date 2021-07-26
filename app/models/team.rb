# frozen_string_literal: true

# team-model
class Team < ApplicationRecord
  has_and_belongs_to_many :employees
  has_many :projects
end

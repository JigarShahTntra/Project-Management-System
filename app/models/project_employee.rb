# frozen_string_literal: true

# Project-Employee
class ProjectEmployee < ApplicationRecord
  belongs_to :project
  belongs_to :employee
end

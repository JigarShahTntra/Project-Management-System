# frozen_string_literal: true

# client-model
class Client < ApplicationRecord
  has_many :projects
end

# frozen_string_literal: true

# Client-model
class Client < ApplicationRecord
  has_many :projects
end

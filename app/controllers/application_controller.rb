# frozen_string_literal: true

# Application-Controller
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

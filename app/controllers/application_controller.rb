# frozen_string_literal: true

# Application-Controller
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def pagination(data)
    updated_data = data.is_a?(Array) ? Kaminari.paginate_array(data) : data
    updated_data.page(params[:page]).per(2)
  end
end

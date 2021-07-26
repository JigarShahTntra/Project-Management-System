# frozen_string_literal: true

# user module
module Admin
  class UsersController < ApplicationController
    def index
    end
    # def check_email
    #   @user = User.find_by_email(params[:user][:email])
    #   respond_to do |format|
    #    format.json { render :json => !@user }
    #   end
  end
end

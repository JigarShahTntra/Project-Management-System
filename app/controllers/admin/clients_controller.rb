# frozen_string_literal: true
#Client model
module Admin
  class ClientsController < ApplicationController
    def index
      @clients = Client.all
      @q = @clients.ransack(params[:q])
      @clients = pagination(@q.result)
    end

    def show
      @client = Client.find(params[:id])
    end

    def new
      @client = Client.new
    end

    def create
      @client = Client.new(user_params)

      if @client.save
        redirect_to admin_clients_path
      else
        render :new
      end
    end

    def edit
      @client = Client.find_by(id: params[:id])
    end

    def update
      @client = Client.find(params[:id])

      if @client.update(user_params)
        redirect_to admin_clients_path
      else
        render :edit
      end
    end

    def import
      Client.import(params[:file])
      redirect_to clients_path, notice: 'Added Successfully'
    end

    private

    def user_params
      params.require(:client).permit(:name, :email)
    end
  end
end

# frozen_string_literal: true

# Client model
module Admin
  class ClientsController < ApplicationController
    before_action set_client, only: %i[show edit update]
    def index
      @clients = Client.all
      @q = @clients.ransack(params[:q])
      @clients = pagination(@q.result)
    end

    def show; end

    def new
      @client = Client.new
    end

    def create
      @client = Client.new(client_params)

      if @client.save
        redirect_to admin_clients_path
      else
        render :new
      end
    end

    def edit; end

    def update
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

    def set_client
      @client = Client.find_by(id: params[:id])
    end
    def client_params
      params.require(:client).permit(:name, :email)
    end
  end
end

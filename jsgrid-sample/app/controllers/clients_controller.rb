class ClientsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render json: Client.all
    end

    def create
        @client = Client.new(name: params["name"], age: params["age"], address: params["address"], married: params["married"])
        @client.save
        render json: @client
    end

    def update
        @client = Client.find(params[:id])
        @client.update(name: params["name"], age: params["age"], address: params["address"], married: params["married"])
        render json: @client
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy
        render nothing: true, status: 200
    end

end

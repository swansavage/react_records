class RecordsController < ApplicationController
    skip_before_action :verify_authenticity_token


    #get index (all)
    def index
        render json: Record.all
    end

    #get show (just one)
    def show
        render json: Record.find(params["id"])
    end

    #post create
    def create
        render json: Record.create(params["record"])
    end

    #delete
    def delete
        render json: Record.delete(params["id"])
    end

    #update
    def update
        render json: Record.update(params["id"], params["record"])
    end
end

class PiratesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        render json: Pirate.all, status: :ok
    end

    def show
        pirate = Pirate.find(params[:id])
        render json: pirate, serializer: PirateShowSerializer, status: :ok
    end

    def destroy
        Pirate.find(params[:id]).destroy
        head :no_content
    end

    private

    def render_record_not_found
        render json: {error: "Pirate not found"}, status: :not_found
    end

    
end

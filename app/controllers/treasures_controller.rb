class TreasuresController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def create
        treasure = Treasure.create!(treasure_params)
        render json: treasure, status: :created
    end

    private

    def treasure_params
        params.permit(:contents, :pirate_id, :island_id)
    end

    def render_unprocessable_entity(invalid)
        render json: {errors: ErrorMessageSerializer.error_message(invalid.record.errors)}, status: :unprocessable_entity
    end

end

class IslandsController < ApplicationController

    def index
        render json: Island.all, status: :ok
    end

end

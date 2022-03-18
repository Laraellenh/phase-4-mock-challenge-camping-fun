class ActivitiesController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    def index
        render json: Activity.all
    end
    def destroy
        Activity.find(params[:id]).destroy
        head :no_content
    end
end

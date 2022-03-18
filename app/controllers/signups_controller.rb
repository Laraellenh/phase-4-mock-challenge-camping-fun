class SignupsController < ApplicationController
    # rescue_from ActiveRecord::RecordInvalid, with: :super_unprocessable_entity

    def create
        s = Signup.create!(signup_params)
        render json: s.activity, status: :created
    end
    private
    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end

    # def super_unprocessable_entity exception
    #     render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    # end

end

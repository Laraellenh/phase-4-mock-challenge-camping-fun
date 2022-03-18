class CampersController < ApplicationController
  
    def show
        c= Camper.find_by(id: params[:id]) 
            render json: c, serializer: CamperShowSerializer
    end
    
    def index
        render json: Camper.all
    end
    def create 
        c= camper.create!(params_for_camper)
            if c.valid?
                render json: c, status: :accepted
            else
                render json: {error: "Camper not created"}, status: :unprocessable_entity
            end
    end
    private
    # def unprocessable_entity
    #     render json: {error: invalid.record.errors}, status: unprocessable_entity MOVED TO APP CONTROLLER
    # end
    def params_for_camper
       params.permit(:name, :age)
        
    end

end

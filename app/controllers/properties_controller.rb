class PropertiesController < ApplicationController
    def index
        @properties = Property.all
    end

    def new
    end

    def create
        @property = Property.new(property_params)

        @property.save
        redirect_to @property
    end
    
    def show
        @property = Property.find(params[:id])
    end

    private
        def property_params
            params.require(:property).permit(:type, :owner, :address, :rooms, :units, :shops, :sqmt, :floors, :parking, :air_cond, :price)
        end
end

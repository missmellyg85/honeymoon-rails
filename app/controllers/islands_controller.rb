class IslandsController < ApplicationController
    before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy, :index]

    def new
        @island = Island.new
        @destinations = Destination.all()
        2.times do
            @island.hotels.build
        end
    end

    def create
        @island = Island.new(island_params)
        @params = params
        if @island.save
            redirect_to @island, notice: 'Island was created successfully'
        end
    end

    def update
        island = Island.find(params[:id])

        if island.update!(island_params)
            redirect_to island, notice: 'Island was updated successfully'
    end end

    def edit
        @island = Island.find(params[:id])
        
        @destinations = Destination.all()
    end

    def destroy
        island = Island.find(params[:id])

        if island.destroy
            redirect_to island_url, notice: 'Island was deleted successfully'
        end
    end

    def index
        @islands = Island.all
    end

    def show
        @island = Island.find(params[:id])
    end

    private
        def island_params
            params.require(:island).permit(:name, :description, :destination_id, :hotels_attributes => [:id, :name, :description, :_destroy])
        end
        def hotel_params
            params.require(:hotels).permit(:name, :description)
        end
end

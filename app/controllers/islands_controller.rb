class IslandsController < ApplicationController
    before_action :authenticate_admin!

    def new
        @island = Island.new
        @destinations = Destination.all()
    end

    def create
        @island = Island.new(island_params)

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
    end

    def destroy
        island = Island.find(params[:id])

        if island.destroy
            redirect_to island_url, notice: 'Island was deleted successfully'
        end
    end

    def index
        @islands = Island.all()
    end

    def show
        @island = Island.find(params[:id])
    end

    private
        def island_params
            params.require(:island).permit(:name, :description, :destination_id)
        end
end

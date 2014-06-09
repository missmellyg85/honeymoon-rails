class DestinationsController < ApplicationController
    before_action :authenticate_admin!

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(destination_params)

        if @destination.save
            redirect_to @destination, notice: 'Destination was created successfully'
        end
    end

    def update
        destination = Destination.find(params[:id])

        if destination.update!(destination_params)
            redirect_to destination, notice: 'Destination was updated successfully'
        end
    end

    def edit
        @destination = Destination.find(params[:id])
    end

    def destroy
        destination = Destination.find(params[:id])

        if destination.destroy
            redirect_to destinations_url, notice: 'Destination was deleted successfully'
        end
    end

    def index
        @destinations = Destination.all()
    end

    def show
        @destination = Destination.find(params[:id])
    end

    private
        def destination_params
            params.require(:destination).permit(:name, :path)
        end
end

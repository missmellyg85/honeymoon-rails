class HotelsController < ApplicationController
    before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy, :index, :show_admin]

    def new
        @hotel = Hotel.new
        @islands = Island.all
        @destinations = Destination.all
        render :layout => 'application_nobanner'
    end

    def create
        @hotel = Hotel.new(hotel_params)

        if @hotel.save
            redirect_to hotel_admin_path @hotel, notice: 'Hotel was created successfully'
        end
    end

    def update
        @hotel = Hotel.find(params[:id])

        if @hotel.update!(hotel_params)
            redirect_to hotel_admin_path @hotel, notice: 'Hotel was updated successfully'
        end
    end

    def edit
        @hotel = Hotel.find(params[:id])
        @islands = Island.all
        @destinations = Destination.all
        render :layout => 'application_nobanner'
    end

    def destroy
        hotel = Hotel.find(params[:id])

        if hotel.destroy
            redirect_to hotel_admin_path, notice: 'Hotel was deleted successfully'
        end
    end

    def index
        @hotels = Hotel.all
    end

    def all
        @hotels = Hotel.all
        render :layout => 'application_nobanner'
    end

    def show
        @hotel = Hotel.find(params[:id])
    end

    def show_admin
        @hotel = Hotel.find(params[:id])
        render :layout => 'application_nobanner'
    end

    private
    def hotel_params
        params.require(:hotel).permit(:name, :description, :destination_id, :island_id, :path)
    end
end

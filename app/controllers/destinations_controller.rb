class DestinationsController < ApplicationController
    before_action :authenticate_admin!

    def new
    end

    def create
    end

    def update
    end

    def edit
    end

    def destroy
    end

    def index
        @destinations = Destination.all()
    end

    def show
    end
end

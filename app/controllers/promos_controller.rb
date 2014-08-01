class PromosController < ApplicationController
    before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy, :all, :show_admin]

    def new
        @promo = Promo.new
        @islands = Island.all
    end

    def create
        @promo = Promo.new(promo_params)

        if @promo.save
            redirect_to promo_admin_path @promo, notice: 'Promo was created successfully'
        end
    end

    def update
        promo = Promo.find(params[:id])

        if promo.update!(promo_params)
            redirect_to promo_admin_path promo, notice: 'Promo was updated successfully'
        end
    end

    def edit
        @promo = Promo.find(params[:id])
        @islands = Island.all
    end

    def destroy
        promo = Promo.find(params[:id])

        if promo.destroy
            redirect_to promos_all_path, notice: 'Promo was deleted successfully'
        end
    end

    def index
        @promos = Promo.all
    end

    def all
        @promos = Promo.all
    end

    def show
        @promo = Promo.find(params[:id])
    end

    def show_admin
        @promo = Promo.find(params[:id])
    end

    private
    def promo_params
        params.require(:promo).permit(:description, :path, :start_date, :end_date)
    end
end

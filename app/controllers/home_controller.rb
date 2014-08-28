class HomeController < ApplicationController
  def index
      @promos = Promo.all
  end
end

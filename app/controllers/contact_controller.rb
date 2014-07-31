class ContactController < ApplicationController
  def index
    @destinations = Destination.all
  end
end

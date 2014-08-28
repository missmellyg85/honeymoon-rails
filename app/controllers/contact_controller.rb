class ContactController < ApplicationController
  def index
    @destinations = Destination.all
    render :layout => 'application_nobanner'
  end
end

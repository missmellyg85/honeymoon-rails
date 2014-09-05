class ContactController < ApplicationController
  def index
    @destinations = Destination.all
    @contact = Contact.new
    render :layout => 'application_nobanner'
  end

  # POST /users
  # POST /users.json
  def create

		locations = params[:contact][:locations] ? params[:contact][:locations].join(", "): ""
		new_contact = contact_params
		new_contact[:locations] = locations
		@contact = Contact.new(new_contact)		
		

    ContactMailer.contact_email(@contact).deliver
    redirect_to contact_path, notice: 'Sent successfully'
  end

  private
    def contact_params
        params.require(:contact).permit(:name, :phone, :email, :occasion, :locations)
    end
end

class ContactMailer < ActionMailer::Base
	default from: 'notifications@honeymoon-hideaways.com'
 
  def contact_email(contact)
    @contact = contact
    mail(to: "missywilliams85@gmail.com", subject: 'New Contact Request')
  end
end
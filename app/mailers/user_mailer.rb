class UserMailer < ApplicationMailer

	#default from: 'notifications@example.com'
 
  def welcome_email(contact)
    @contact = contact
    @url  = 'http://example.com/login'
    mail(to:@contact.email, subject: 'Welcome to My Awesome Site')
  end
end

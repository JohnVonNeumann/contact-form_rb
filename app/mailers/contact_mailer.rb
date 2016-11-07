class ContactMailer < ApplicationMailer
  default from: 'contact@coderfactoryacademy.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(
      to: 'louiswillcock@gmail.com',
      subject: 'New contact messsage'
    ) do |format|
      format.text{ render 'contact_mailer' }
      format.html{ render 'contact_mailer' }
    end
  end
end

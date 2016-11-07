class ContactController < ApplicationController
  def index
  end

  def mail
    return unless params[:contact]

    email = params[:contact][:email]
    message = params[:contact][:email]

    if email.present? && message.present?
      #tell the ContactMailer to send an email
      ContactMailer.send_contact_email(email, message).deliver_now
      redirect_to '/contact', notice: 'Email sent!'
    else
      flash[:warning] = 'Please fill out the form'
      redirect_to '/contact'
    end
  end
end

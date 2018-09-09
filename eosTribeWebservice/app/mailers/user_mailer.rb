class UserMailer < ApplicationMailer
  default from: 'admin@eostribe.com'

  def welcome_email
    @eos_account = params[:eos_account]
    mail(to: @eos_account.email, subject: 'Welcome to the Eos Tribe')
  end

end

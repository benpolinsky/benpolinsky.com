class ContactMailer < ApplicationMailer
  default from: "philadelphiaslick@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.hello.subject
  #
  def hello(email, message)
    @sender = email
    @message = message
    mail to: 'benjamin.polinsky@gmail.com', subject: "A message from benpolinsky.com"
  end
end

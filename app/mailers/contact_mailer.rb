class ContactMailer < ApplicationMailer
  default to: "schapendoes@comcast.net"

  def contact_email(name, email, content, subject)
    @name = name
    @email = email
    @content = content
    @subject = subject

    mail(from: email, subject: 'Schapendoes.us visitor contact request')
  end
end

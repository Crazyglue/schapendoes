class ContactMailer < ApplicationMailer
  default to: "edbz2k2@gmail.com"

  def contact_email(name, email, content)
    @name = name
    @email = email
    @content = content

    mail(from: email, subject: 'Schapendoes.us visitor contact request')
  end
end

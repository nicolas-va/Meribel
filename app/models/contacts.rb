class Contact < MailForm::Base
  attribute :surname,   validate: true
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :starting_date, validate:true
  attribute :starting_date, validate:true
  attribute :message


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "nicolas.vassel@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

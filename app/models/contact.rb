class Contact < ActiveRecord::Base
  include MailForm::Delivery

  attributes :name, :email, :message, :form

  def headers
    {
      to: "nappiesapp@gmail.com",
      subject: "User created an account"
      :from => %("#{name}" <#{email}>)
    }
  end
end

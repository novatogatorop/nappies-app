class ContactsController < ApplicationController
  # require 'mail_form'
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    authorize @contact
    if @contact.deliver
      flash.now[:error] = nil
      # redirect_to contacts_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render 'contacts/new'
    end
  end
end

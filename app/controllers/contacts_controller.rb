class ContactsController < ApplicationController
  require 'mail_form'
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    authorize @contact
    if @contact.deliver
      flash.now[:error] = nil
      # redirect_to contacts_path, notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end


  # def new
  #   @contact = Contact.new
  #   authorize @contact
  # end

  # def create
  #   @contact = Contact.new()
  #   @contact.name = params[:name]
  #   @contact.email = params[:email]
  #   @contact.message = params[:message]
  #   authorize @contact
  #   if @contact.deliver
  #     render json: {message: "Message sent successfully"}
  #   else
  #     render json: @contact.errors
  #   end
  # end
end

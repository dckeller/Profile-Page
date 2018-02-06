class ContactsController < ApplicationController
  
  def new 
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |f|
      if @contact.deliver
        @contact = Contact.new
        f.html { redirect_to root_path(anchor: 'mailer'), notice: 'Message Sent' }
        flash.now[:error] = nil
      else
        redirect_to root_path(anchor: 'mailer'), notice: 'Message Unable To Send'
        flash.now[:error] = 'Cannot send message'
      end
    end 
  end
end

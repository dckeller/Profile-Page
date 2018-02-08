class ContactsController < ApplicationController
  
  def index 
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |f|
      if @contact.deliver
        @contact = Contact.new
        f.html { render 'index' }
        f.js { flash.now[:success] = @message = "Thank you for your message, I'll get back to you soon!" }
      else
        f.html { render 'index' }
        f.js { flash.now[:error] = @message = "Cannot send message at this time." }
      end
    end 
  end
end

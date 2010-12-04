class ContactsController < ApplicationController
    def index #for reporting
      params[:sort] ||= "created_at"
      @contacts = Contact.order(params[:sort])
    end

    def show #click into single
      @contact = Contact.find(params[:id])
      @title = @contact.id
    end

    def new #on pop
      @contact = Contact.new
      @channels = Channel.find(:all)
    end

    def create #takes form submit from new 
      @contact = Contact.new(params[:contact])
      if @contact.save
        flash[:success] = "Disposition saved successfully"
        redirect_to :root
      else
        render 'new'
      end
    end
end

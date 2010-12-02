class ContactsController < ApplicationController
    def index #for reporting
      @contacts = Contact.find(:all)
    end

    def show #click into single
      @contact = Contact.find(params[:id])
      @title = @contact.id
    end

    def new #on pop
      @contact = Contact.new
    end

    def create #takes form submit from new 
      @contact = Contact.new(params[:contact])
      if @contact.save
        flash[:success] = "Disposition saved successfully"
        redirect to @contact
      else
        render 'new'
      end
    end
end

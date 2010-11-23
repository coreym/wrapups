class ContactsController < ApplicationController
    def index #for reporting
      @contacts = Contact.find(:all)
    end

    def show #click into single
    end

    def new #on pop
    end

    def create #takes form submit from new 
    end
end

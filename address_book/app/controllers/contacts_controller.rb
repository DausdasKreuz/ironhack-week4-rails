class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc)
  end

  def new
  end

  def create
    contact = Contact.create(
    name: params[:contact][:name],
    address: params[:contact][:address],
    phone: params[:contact][:phone],
    email: params[:contact][:email],
    )
    redirect_to "/contacts"

    # it's the same that:
    # Contact.new([...])
    # contact.save
  end

  def show
    @contact = Contact.find(params[:id])
  end
end

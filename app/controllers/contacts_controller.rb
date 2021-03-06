class ContactsController < ApplicationController

  def create
    contact = Contact.new(contact_params)
    if contact.save
        render json: contact
    else
      render(
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    Contact.destroy(params[:id])
    render json: {}
  end

  def index
    user = User.find(params[:user_id])
    render json: user.contacts + user.shared_contacts
  end

  def show
    render json: Contact.find(params[:id])
  end

  def favorite
    contact = Contact.update(params[:id],favorite: true)
    if contact.save
      render json: contact
    else
      render(
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    contact = Contact.update(params[:id], contact_params)
    if contact.save
      render json: contact
    else
      render(
      json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def contact_params
    params[:contact].permit(:name, :email, :user_id)
  end

end

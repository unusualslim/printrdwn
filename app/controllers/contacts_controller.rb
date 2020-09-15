class ContactsController < ApplicationController
def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(Contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to Contactes_path
  end

  private
    def contact_params
      params.require(:contact).permit(:company, :first_name, :last_name, :email, :work_number, :work_fax, :mobile_number, :home_number, :notes)
    end

end

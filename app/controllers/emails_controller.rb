class EmailsController < ApplicationController

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    if @email.save
      flash[:success] = "Thank you for your interest!  We'll be contacting you soon."
      redirect_to root_path
    else
      redirect_to root_path, :notice => "Invalid email address.  Please try again."
    end
  end

  private

    def email_params
      params.require(:email).permit(:email)
    end

end

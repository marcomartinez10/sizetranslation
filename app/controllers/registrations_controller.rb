class RegistrationsController < Devise::RegistrationsController
include ApplicationHelper
  def new
  end



   def create
     user = User.new(sign_up_params)
      if user.save
        redirect_to '/'
      else
        flash[:error] = user.errors.full_messages
        redirect_to '/users/sign_up'
      end
    end

    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


end

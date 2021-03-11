class RegistrationsController < Devise::RegistrationsController
	

   def sign_up_params
         params.require(:doctor).permit(:email, :password, :password_confirmation, :name, :designation, :image, :location)  
    end
end



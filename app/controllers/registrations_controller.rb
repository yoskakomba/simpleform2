class RegistrationsController < ApplicationController
  
  def new 
    @registrations = Registration.new
  end
  
  def create 
    @registrations = Registration.new(registration_params)
    
    if @registrations.save
      flash[:success] = "Your registration was created succesfully"
      redirect_to root_path
    else
      flash[:error] = "Please complete the form, all required and can not be blank"
      redirect_to root_path
    end
  end
  
  private
  
    def registration_params
      params.require(:registration).permit(:name, :lastname, :date_of_birth,
      :address, :suburb, :state, :post_code, :telephone, :private_health_fund,
      :email, :reference, :news_letter, :occupation, :exercise_routine, :body_conditions,
      :past_medical_history, :medication, :symptoms, :other_experience, :preference, 
      :body_area)
    end

end
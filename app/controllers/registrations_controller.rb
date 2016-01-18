class RegistrationsController < ApplicationController
  
  def index 
    @registration = Registration.new
  end
  
  def new 
    @registration = Registration.new
  end
  
  def create 
    @registration = Registration.new(registration_params)
    
    if @registration.save
      flash[:success] = "Your registration was created succesfully"
      redirect_to root_path
    else
      redirect_to root_path
    end
      
  end
  
  def edit
    
  end
  
  private
  
    def registration_params
      params.require(:registration).permit(:name, :lastname, :date_of_birth,
      :address, :suburb, :post_code, :telephone, :private_health_fund,
      :email, :reference, :news_letter, :occupation, :exercise_routine, :body_conditions,
      :past_medical_history, :medication, :symptoms, :other_experience, :preference, 
      :body_area)
    end

end
class Registration < ActiveRecord::Base
  validates :name, :minimum => 5
  validates :last_name, presence: true 
  validates :date_of_birth, presence: true
  validates :address, presence: true
  validates :suburb, presence: true
  validates :state, presence: true
  validates :post_code, presence: true
  validates :telephone, presence: true
  validates :private_health_fund, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :reference, presence: true
  validates :news_letter, presence: true
  validates :occupation, presence: true
  validates :body_conditions, presence: true
  validates :past_medical_history, presence: true
  validates :medication, presence: true
  validates :symptoms, presence: true
  validates :other_experience, presence: true
  validates :preference, presence: true
  validates :body_area, presence: true
end 
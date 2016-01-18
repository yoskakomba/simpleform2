class Registration < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 5, maximum: 19 }
  validates :last_name, presence: true, length: { minimum: 5, maximum: 19 }
  validates :address, presence: true
  validates :date_of_birth, presence: true
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }
  validates :suburb, presence: true
  validates :state, presence: true
  validates :post_code, presence: true
  validates :telephone, presence: true
  validates :reference, presence: true
  validates :news_letter, presence: true
  validates :occupation, presence: true
  validates :exercise_routine, presence: true
  validates :body_conditions, presence: true
  validates :past_medical_history, presence: true, length: { minimum: 5, maximum: 500 }
  validates :medication, presence: true, length: { minimum: 5, maximum: 500 }
  validates :symptoms, presence: true, length: { minimum: 5, maximum: 500 }
  validates :other_experience, presence: true, length: { minimum: 5, maximum: 500 }
  validates :preference, presence: true
  validates :body_area, presence: true
  validates :terms_of_service, presence: true
  
end 
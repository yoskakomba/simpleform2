class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :last_name
      t.string :date_of_birth
      t.string :address
      t.string :suburb
      t.string :state
      t.string :post_code
      t.string :telephone
      t.string :private_health_fund
      t.string :email
      t.string :reference
      t.string :news_letter
      t.string :occupation
      t.string :exercise_routine
      t.string :body_conditions
      t.text :past_medical_history
      t.text :medication
      t.text :symptoms
      t.text :other_experience
      t.string :preference
      t.string :body_area
      t.string :terms_of_service
      t.timestamps
    end
  end
end

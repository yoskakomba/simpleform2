class Registration < ActiveRecord::Base
  validates_length_of :name, :minimum => 5, :message => "blah blah blah"
  
end 
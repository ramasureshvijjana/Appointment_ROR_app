class Patient < ApplicationRecord
  validates :age, :inclusion => 1...100
  validates :name, :length => { :in => 3..30, :message => "The name is too small"}
  validates :phone, :uniqueness => { :scope => :doctor_id, :message => "This phone number is already taken" }
  
  belongs_to :doctor

end

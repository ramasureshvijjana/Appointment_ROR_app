class Doctor < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :length => { :in => 3..30}
  validates :designation, :length => { :in => 2..20}
  validates :email, :uniqueness => true

  has_many :patients, :dependent => :destroy
  has_many :doctor_edu_articles, :dependent => :destroy
  has_one_attached :image
  
end

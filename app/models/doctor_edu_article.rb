class DoctorEduArticle < ApplicationRecord

  validates :about_article, :length => { minimum: 30}
  belongs_to :doctor
  has_one_attached :article
end

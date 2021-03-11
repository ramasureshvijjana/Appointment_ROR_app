class CreateDoctorEduArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_edu_articles do |t|
      t.string :article_name
      t.string :about_article
      t.references :doctor, :null => false, :foreign_key => true

      t.timestamps
    end
  end
end

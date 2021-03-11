class DoctorsController < ApplicationController

	def all_doctors

		@alldoctors = Doctor.all
		
	end

	def all_articles

		@allarticles = DoctorEduArticle.all
		
	end

	def show_doctor

		@showdoctor = Doctor.find(params[:id])
		
	end

	
end

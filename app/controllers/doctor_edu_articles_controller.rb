class DoctorEduArticlesController < ApplicationController
  before_action :set_doctor_edu_article, :only => %i[ show edit update destroy ]

  # GET /doctor_edu_articles or /doctor_edu_articles.json
  def index
    @doctor_edu_articles = DoctorEduArticle.where(:doctor_id => current_doctor)
  end

  # GET /doctor_edu_articles/1 or /doctor_edu_articles/1.json
  def show
  end

  # GET /doctor_edu_articles/new
  def new
    @doctor_edu_article = DoctorEduArticle.new
  end

  # GET /doctor_edu_articles/1/edit
  # def edit
  # end

  # POST /doctor_edu_articles or /doctor_edu_articles.json
  def create
    @doctor_edu_article = DoctorEduArticle.new(doctor_edu_article_params)

    respond_to do |format|
      if @doctor_edu_article.save
        format.html { redirect_to @doctor_edu_article, :notice => "Doctor edu article was successfully created." }
        format.json { render :show, :status => :created, :location => @doctor_edu_article }
      else
        format.html { render :new, :status => :unprocessable_entity }
        format.json { render :json => @doctor_edu_article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_edu_articles/1 or /doctor_edu_articles/1.json
  # def update
  #   respond_to do |format|
  #     if @doctor_edu_article.update(doctor_edu_article_params)
  #       format.html { redirect_to @doctor_edu_article, notice: "Doctor edu article was successfully updated." }
  #       format.json { render :show, status: :ok, location: @doctor_edu_article }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @doctor_edu_article.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /doctor_edu_articles/1 or /doctor_edu_articles/1.json
  def destroy
    @doctor_edu_article.destroy
    respond_to do |format|
      format.html { redirect_to doctor_edu_articles_url, :notice => "Doctor edu article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_edu_article
      @doctor_edu_article = DoctorEduArticle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_edu_article_params
      params.require(:doctor_edu_article).permit(:article_name, :about_article, :article, :doctor_id)
    end
end

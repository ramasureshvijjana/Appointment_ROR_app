class PatientsController < ApplicationController
  before_action :set_patient, :only => %i[ show edit update destroy ]
  before_action :ram, only: :index



  # GET /patients or /patients.json
  def index
    # order('oppointment_date ASC') is used for sort the data in Ascending order.
    # If you want to keep the data in decending order use DESC insted of ASC.
    # where(doctor_id: current_doctor) is used for retrive the prasent loged doctor's patients data.
    @patients = Patient.where(:doctor_id => current_doctor).
    where('oppointment_time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day+100).
    order('oppointment_time ASC')

  end

  
  # GET /patients/new
  def new
    @patient = Patient.new
    @doc = Doctor.find(params[:id])

    #@doctors = Doctor.all
  end

  def ram

    p 'rammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm'
    
  end
  
  # def destroy
  #   @patient.destroy
  #   respond_to do |format|
  #     format.html { redirect_to patients_url, notice: "Patient was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, :notice => "Patient was successfully created." }
        format.json { render :show, :status => :created, :location => @patient }
      else
        @doc = Doctor.find_by(:id => params[:patient][:doctor_id])
        format.html { render :new, :status => :unprocessable_entity }
        format.json { render :json => @patient.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
     
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:name, :age, :problem, :phone, :email, :doctor_id, :oppointment_time)
    end

  # # PATCH/PUT /patients/1 or /patients/1.json
  # def update
  #   respond_to do |format|
  #     if @patient.update(patient_params)
  #       format.html { redirect_to @patient, notice: "Patient was successfully updated." }
  #       format.json { render :show, status: :ok, location: @patient }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @patient.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  
end

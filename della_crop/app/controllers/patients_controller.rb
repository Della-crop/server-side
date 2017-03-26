# blog posts controller
class PatientsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    puts params
    @patient = Patient.new(
      params.permit(
        :first_name,
        :last_name,
        :room_number,
        :smart_watch_SN
      )
    )
    @patient.save
  end

  def fetch_patient_by_id
    @patient = Patient.find_by(params[:id])
    render json: @patient
  end

  def fetch_patient_by_name
    @patient = Patient.find_by(params[:first_name])
  end

  def fetch_all_patient
    @patient = Patient.all
    render json: @patient
  end

  def update
    @patient = Patient.find_by(params[:id])
    @patient.update(
      params.permit(
        :first_name,
        :last_name,
        :room_number,
        :smart_watch_SN
      )
    )
  end

  def destroy
    @patient = Patient.find_by(params[:id])
    @patient.destroy
  end
end

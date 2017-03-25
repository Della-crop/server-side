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

  def fetch_patient; end

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

end

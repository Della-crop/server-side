# blog posts controller
class PatientsController < ApplicationController
  def new
    @patient = Patient.new(
      params.require(:patient).permit(
        :first_name,
        :last_name,
        :room_number,
        :smartwatchSN
      )
    )
    @patient.save
  end

  def get; end

  def update; end
end

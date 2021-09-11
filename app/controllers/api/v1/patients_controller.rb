class Api::V1::PatientsController < Api::BaseController
  before_action :authenticate_user!
  before_action :find_patient, only: %w[show index]

  def show
    render_jsonapi_response(@patient)
  end

  def index
    render json: Patient.all
  end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

end
class CheckupsController < ApplicationController
  # GET /patients/1/checkups
  def index
  # For URL like /patients/1/checkups
  # Get the patient with id=1
  @patient = Patient.find(params[:patient_id])
  # Access all checkups for that patient
  @checkups = @patient.checkups
  end
  # GET /patients/1/checkups/2
  def show
  @patient = Patient.find(params[:patient_id])
  # For URL like /patients/1/checkups/2
  # Find an checkup in patients 1 that has id=2
  @checkup = @patient.checkups.find(params[:id])
  end
  # GET /patients/1/checkups/new
  def new
  @patient = Patient.find(params[:patient_id])
  # Associate an checkup object with patient 1
  @checkup = @patient.checkups.build
  end
  # POST /patients/1/checkups
  def create
  @patient = Patient.find(params[:patient_id])
  # For URL like /patients/1/checkups
  # Populate an checkup associate with patient 1 with form data
  # Movie will be associated with the checkup
  # @checkup = @patient.checkups.build(params.require(:checkup).permit!)
  @checkup =
  @patient.checkups.build(params.require(:checkup).permit(:clinic_id, :doctor_id, :date, :time, :summary))
  if @checkup.save
  # Save the checkup successfully
  redirect_to patient_checkup_url(@patient, @checkup)
  else
  render :action => "new"
  end
  end
  # GET /patients/1/checkups/2/edit
  def edit
  @patient = Patient.find(params[:patient_id])
  # For URL like /patients/1/checkups/2/edit
  # Get checkup id=2 for patient 1
  @checkup = @patient.checkups.find(params[:id])
  end
  # PUT /patients/1/checkups/2
  def update
  @patient = Patient.find(params[:patient_id])
  @checkup = Checkup.find(params[:id])
  if
  @checkup.update_attributes(params.require(:checkup).permit(:clinic_id, :doctor_id, :date, :time, :summary))
  # Save the checkup successfully
  redirect_to patient_checkup_url(@patient, @checkup)
  else
  render :action => "edit"
  end
  end
  # DELETE /patients/1/checkups/2
  def destroy
  @patient = Patient.find(params[:patient_id])
  @checkup = Checkup.find(params[:id])
  @checkup.destroy
  respond_to do |format|
  format.html { redirect_to patient_checkups_path(@patient) }
  format.xml { head :ok }
  end
end
end

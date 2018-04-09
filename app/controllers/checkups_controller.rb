class CheckupsController < ApplicationController
  # GET /movies/1/reviews
  def index
  # For URL like /movies/1/reviews
  # Get the movie with id=1
  @patient = Patient.find(params[:patient_id])
  # Access all reviews for that movie
  @checkups = @patient.checkups
  end
  # GET /movies/1/reviews/2
  def show
  @patient = Patient.find(params[:patient_id])
  # For URL like /movies/1/reviews/2
  # Find an review in movies 1 that has id=2
  @checkup = @patient.checkups.find(params[:id])
  end
  # GET /movies/1/reviews/new
  def new
  @patient = Patient.find(params[:patient_id])
  # Associate an review object with movie 1
  @checkup = @patient.checkups.build
  end
  # POST /movies/1/reviews
  def create
  @patient = Patient.find(params[:patient_id])
  # For URL like /movies/1/reviews
  # Populate an review associate with movie 1 with form data
  # Movie will be associated with the review
  # @review = @movie.reviews.build(params.require(:review).permit!)
  @checkup =
  @patient.checkups.build(params.require(:checkup).permit(:details))
  if @checkup.save
  # Save the review successfully
  redirect_to patient_checkup_url(@patient, @checkup)
  else
  render :action => "new"
  end
  end
  # GET /movies/1/reviews/2/edit
  def edit
  @patient = Patient.find(params[:patient_id])
  # For URL like /movies/1/reviews/2/edit
  # Get review id=2 for movie 1
  @checkup = @patient.checkups.find(params[:id])
  end
  # PUT /movies/1/reviews/2
  def update
  @patient = Patient.find(params[:patient_id])
  @checkup = Checkup.find(params[:id])
  if
  @checkup.update_attributes(params.require(:checkup).permit(:details))
  # Save the review successfully
  redirect_to patient_checkup_url(@patient, @checkup)
  else
  render :action => "edit"
  end
  end
  # DELETE /movies/1/reviews/2
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

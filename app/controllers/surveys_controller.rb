class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :update, :destroy]

  # GET /surveys
  def index
    @surveys = Survey.all

    render json: @surveys
  end

  # GET /surveys/1
  def show
    @survey = Survey.find(params[:id])
    render json: @survey.to_json( include: {questions: {include: :responses }})
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      render json: @survey, status: :created, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      render json: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
  end

  def submit
    yesses = all_responses.select {|r| r.answer == "Yes" || "yes" }
    @keywords = []
    yesses.each do |y|
      @keywords << y.to_s
    end
    #formulate query string

    #hit google places API

    #return array of places

    #send array to Results action
  end

  def results
    #logic to determine what will be shown the user
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def all_responses
      survey = Survey.find(params[:id])
      return @responses = Responses.find_by('survey_id', survey.id)
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:name, :id)
    end
end

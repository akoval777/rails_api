class Api::V1::JobsController < ApplicationController
  def index
    if params[:company_id]
      @jobs = Company.find(params[:company_id]).jobs
    else
      @jobs = Job.all
    end
    render json: {jobs: @jobs}
  end

  def show
    render json: @job
  end

  def create
  end

end
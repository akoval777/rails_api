class Api::V1::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]
  def index
    @companies = Company.all
    render json: {companies: @companies}, except: [:id, :created_at, :updated_at]
  end

  def show
    render json: @company
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      render json: @company.as_json, status: :created
    else
      render json: {company: @company.errors}
    end
  end

  def update

  end

  def destroy
    @company.destroy
    render json: {deleted_company: @company}
  end

  private
  def set_company
    @company = Company.find(params[:id])
  end
  def company_params
    params.permit(:name, :location)
  end
end
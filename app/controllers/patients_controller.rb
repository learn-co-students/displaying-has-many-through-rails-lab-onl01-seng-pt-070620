class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    
  end
end

class PatientsController < ApplicationController 
    before_action :set_patient, only: [:show]

    def index 
        @patients = Patient.all 
    end 

    def show 

    end 

    private 

    def set_patient 
        @patient = Patient.find(params[:id])
        @appointments = @patient.appointments
    end 

    def doctor_params
        params.require(:patient).permit(:name, :age)
    end 
end 
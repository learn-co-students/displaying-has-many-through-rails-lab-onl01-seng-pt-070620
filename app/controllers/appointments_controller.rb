class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def new
        @appointment = Appointment.new
    end

    def create

    end

    def show
        set_appointment
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def set_appointment
        @appointment = Appointment.find(params[:id])
    end
end
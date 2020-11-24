class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def readable_datetime
        self.appointment_datetime.to_formatted_s(:long).split.insert(3, "at").join(" ")
    end
end

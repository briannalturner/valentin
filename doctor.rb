class Doctor

    attr_reader :name, :all

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        arr = []
        Appointment.all.each { |appt|
            if appt.doctor == self
                arr << appt
            end
        }
        arr
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        arr = []
        appointments.each { |appt|
            arr << appt.patient
        }
        arr
    end

end
class Patient
    attr_reader :name, :all

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments
        arr = []
        Appointment.all.each { |appt|
            if appt.patient == self
                arr << appt
            end
        }
        arr
    end

    def doctors
        arr = []
        appointments.each { |appt|
            arr << appt.doctor
        }
        arr
    end

end
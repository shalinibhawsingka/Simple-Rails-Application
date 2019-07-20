class HomeController < ApplicationController
    def index
        
    end

    def firemail
        @students = Student.all.order(:name)
        @students.each do |student|
            StudentsMailer.registration_confirmation(student).deliver_now
        end
    end
end

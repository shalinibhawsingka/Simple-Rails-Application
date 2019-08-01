class HomeController < ApplicationController
  def index
      
  end

  def firemail
    @students = Student.all.ord
    StudentsMailer.registration_confirmation(@students).deliver_now
  end
end

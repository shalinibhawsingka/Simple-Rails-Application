class HomeController < ApplicationController
  def index; end

  def firemail
    StudentsMailer.registration_confirmation.deliver_now
  end
end

class StudentsMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.students_mailer.registration_confirmation.subject
  #
  def registration_confirmation
    @students = Student.all.order_by_name
    mail(to: "sample@gmail.com", subject: "Confirm")
  end
end

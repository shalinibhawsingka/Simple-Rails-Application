class StudentsMailer < ApplicationMailer
  default to: -> { Student.pluck(:email) },
          from: 'notification@example.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.students_mailer.registration_confirmation.subject
  #
  def registration_confirmation(student)
    @student = student
    mail(to: @student.try(:email), subject: 'Confirm')
  end
end

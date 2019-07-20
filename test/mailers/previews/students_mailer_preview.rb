# Preview all emails at http://localhost:3000/rails/mailers/students_mailer
class StudentsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/students_mailer/registration_confirmation
  def registration_confirmation
    StudentsMailer.registration_confirmation
  end

end

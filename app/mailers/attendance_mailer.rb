class AttendanceMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
 
    def attendance_creation_email(attendance)
      @attendance = attendance 
  
      @url  = 'http://monsite.fr/event/new' 
  
      mail(to: @attendance.user.email, subject: "Merci pour votre inscription à l'évènement !") 
    end
end

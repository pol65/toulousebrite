class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event

    after_create :attendance_creation

    def attendance_creation
    AttendanceMailer.attendance_creation_email(self).deliver_now
  end
end

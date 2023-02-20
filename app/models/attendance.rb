class Attendance < ApplicationRecord
  belongs_to :participent, class_name: "User"
  belongs_to :event

end

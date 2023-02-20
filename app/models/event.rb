class Event < ApplicationRecord
  belongs_to :admin, class_name: "User"
  has_many :participents, class_name: "User", through: :attendances
  has_many :attendances
end

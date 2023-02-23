class Event < ApplicationRecord
  validates_with EventValidator

  belongs_to :admin, class_name: "User"
  has_many :participents, class_name: "User", through: :attendances
  has_many :attendances
  
  validates :start_date,
  presence: true

  validates :duration,
  presence: true

  validates :title,
  presence: true,
  length: { in: 5..140 }

  validates :description,
  presence: true,
  length: { in: 20..1000 }


  validates :price,
  presence: true,
  numericality: { in: 1..1000 }

  validates :location,
  presence: true

  has_one_attached :picture

end

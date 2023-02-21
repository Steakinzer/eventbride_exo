class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  has_many :events, through: :attendances
  has_many :attendances
end

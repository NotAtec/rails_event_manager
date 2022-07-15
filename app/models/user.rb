class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hosted_events, class_name: 'Event', foreign_key: 'host_id', dependent: :destroy

  has_many :event_ticketings, foreign_key: :event_attendee_id, dependent: :destroy
  has_many :attended_events, through: :event_ticketings, dependent: :destroy

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }
end

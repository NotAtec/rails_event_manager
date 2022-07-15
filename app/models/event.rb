class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'

  has_many :event_ticketings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_ticketings, source: :event_attendee

  validates :location, presence: true
  validates :date, presence: true
  validates :date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "This must be in the format of YYYY-MM-DD" }
end

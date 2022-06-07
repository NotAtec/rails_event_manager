class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'

  validates :location, presence: true
  validates :date, presence: true
  validates :date, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "must be in the format of YYYY-MM-DD" }
end

class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :event_attendees, foreign_key: :event_id
  has_many :attendees, through: :event_attendees
end

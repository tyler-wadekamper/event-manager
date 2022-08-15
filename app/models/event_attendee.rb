class EventAttendee < ApplicationRecord
  validates_uniqueness_of :attendee_id, scope: :event_id
  
  belongs_to :event
  belongs_to :attendee, class_name: 'User'
end

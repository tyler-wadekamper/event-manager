class CreateEventAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendees do |t|
      t.references :event, foreign_key: true
      t.references :attendee, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

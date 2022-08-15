class EventAttendeesController < ApplicationController
  def create
    @event_attendee = EventAttendee.new(event_attendee_params)

    if @event_attendee.save
      redirect_to event_url(event_attendee_params[:event_id])
    else
      render event_path(event_attendee_params[:event_id]), status: :unprocessable_entity
    end
  end

  private

  def event_attendee_params
    params.require(:event_attendee).permit(:event_id, :attendee_id)
  end
end

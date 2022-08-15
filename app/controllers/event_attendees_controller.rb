class EventAttendeesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @event_attendee = EventAttendee.new(event_attendee_params)

    flash[:alert] = 'You are already attending this event.' unless @event_attendee.save
    redirect_to event_url(event_attendee_params[:event_id])
  end

  private

  def event_attendee_params
    params.require(:event_attendee).permit(:event_id, :attendee_id)
  end
end

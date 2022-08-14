class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        redirect_to events_url
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end

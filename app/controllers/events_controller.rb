# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to events_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def event_params
    params.require(:event).permit(
      :event_name, :event_date, :event_location, :event_text
    )
  end
end

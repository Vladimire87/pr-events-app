# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

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
    @event = current_user.events.build(event_params)
    @event.user_id = current_user.id
    if @event.save
      # @attendance = Attendance.create(user_id: current_user.id, event_id: @event.id)
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
    params.require(:event).permit(:event_name, :event_date, :event_location, :event_text, :user_id)
  end
  
end

# frozen_string_literal: true

class AttendancesController < ApplicationController
  before_action :authenticate_user!
  def index
    @attendances = current_user.attendances
    @events_created = Event.where(user_id: current_user.id)
  end

 

  def create
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(user: current_user, event: @event)

    if @attendance.save
      flash[:success] = 'You have successfully registered for this event!'
    else
      flash[:error] = 'There was a problem registering for this event.'
    end

    redirect_to @event
  end

  def show
  end
end

class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    puts "XXX"*10
    puts params
    puts "XXX"*10
    @event = Event.find(params[:id])
    @attendance = Attendance.find(params[:id])
  end
end

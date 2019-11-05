class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create]
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    #@attendance = Attendance.find(params[:id])
  end

  def create
    @event = Event.create(
      title: params[:event_title], 
      description: params[:event_description],
       price: params[:event_price], 
       start_date: params[:event_start_date], 
       duration: params[:event_duration], 
       location: params[:event_location] ) 
    if @event.save 
      flash[:success] = "L'évènement est bien crée ! "
      redirect_to root_path
     else
      render "new"
    end
  end
end

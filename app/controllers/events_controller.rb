class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
    @admin_id = current_user.id
  end

  def create
    p params
    p "$" *100
    p current_user
    event = Event.new(event_params)
    event.update(admin_id: current_user.id)
    if event.save
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @users = User.all
    @current_event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:duration, :title, :description, :price, :location, :start_date, :admin_id)
  end
end

class EventTicketingController < ApplicationController
  before_action :find_event
  before_action :find_user

  def create
    if already_going?
      flash[:notice] = "You already have a ticket!"
    else
      @event.attendees.push(@user)
      flash[:notice] = "Succesfully added ticket!"
    end
  end

  def destroy
    if already_going?
      @event.attendees.delete(@user)
      flash[:notice] = "Succesfully removed ticket!"
    else
      flash[:notice] = "You don't have a ticket!"
    end
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
  end

  def find_user
    @user = User.find(current_user.id)
  end

  def already_going?
    EventTicketing.where(event_attendee_id: current_user.id, attended_event_id: params[:event_id]).exists?
  end
end

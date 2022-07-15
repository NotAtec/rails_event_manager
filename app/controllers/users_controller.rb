class UsersController < ApplicationController
  before_action :set_user, only: %i[ show tickets ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @events = @user.hosted_events
  end

  def tickets
    @tickets = @user.attended_events

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = params[:id].nil? ? User.find(params[:format]) : User.find(params[:id])
    end
end

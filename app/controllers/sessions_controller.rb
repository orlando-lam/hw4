class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({ "email" => params["email"] })
    redirect_to "sessions/new"

  end

  def destroy
    session["user_id"] = nil
    flash["notice"] = "Logged Out"
    redirect_to "sessions/new"
  end
end
  
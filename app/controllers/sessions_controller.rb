class SessionsController < ApplicationController
  def new
  end

  def create
        
  end

  def destroy
    session["user_id"] = nil
    flash["notice"] = "Logged Out"
    redirect_to "sessions/new"
  end
end
  
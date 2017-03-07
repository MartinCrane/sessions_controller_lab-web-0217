
class SessionsController < ApplicationController

  def new
  end

  def create

      # if !session[:name].nil?
      #   redirect_to '/'
      # end

      if params[:name].nil? || params[:name].empty?
        redirect_to action: "new"
      else
        session[:name] = params[:name]
        redirect_to action: "show"
      end
  end

  def destroy

    session.delete :name
    redirect_to '/'
  end

end

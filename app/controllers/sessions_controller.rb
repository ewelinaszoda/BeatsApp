class SessionsController < ApplicationController
  # def new
  # end

  # # to log in to the session
  # def create #??????????? not sure!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  #   if session[:username] = params[:username]
  #     redirect_to '/beats/user/:id'
  #   else 
  #     render :new
  #     # redirect_to(controller: 'sessions', action: 'new')
  # end

  # def create 
  #   @user = User.find_by(username: params[:user][:username])
  #   @user = user.try(:authenticate, params[:user][:password])
  #   return redirect_to(controller: 'sessions', action: 'new') unless @user.authenticate(params[:user][:password])
  #   session[:user_id] = @user.id
  #   redirect_to controller: 'users/:id', action: 'show'
  # end 

  #  # to log out from the session
  #  def destroy
  #   session.delete :user_id
  #   redirect_to '/beats'
  #   # redirect_to controller: 'beats', action: 'index'
  # end

end
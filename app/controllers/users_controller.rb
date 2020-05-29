class UsersController < ApplicationController
  before_action :require_logged_in, only: :show
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.create(user_params)
    if !@user.save
      flash[:alert] = "You put wrong username or password. Try again!"
      redirect_to(controller: 'users', action: 'new')
    else 
      flash[:notice] = "Account successfully created!"
      session[:user_id] = @user.id
      redirect_to controller: 'users/:id', action: 'show'
  end

  def show
  end


  
     # to log out from the session
     def destroy
      session.delete :user_id
      redirect_to '/'
      # redirect_to controller: 'beats', action: 'index'
    end
  
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end

end

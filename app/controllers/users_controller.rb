class UsersController < ApplicationController
  before_action :require_logged_in, only: :show
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
  end

  def create
    @user = User.create(user_params)
    if !@user.save
      flash[:alert] = "You put wrong username or password. Try again!"
      return redirect_to(controller: 'sessions', action: 'new')
    else 
      flash[:notice] = "Account successfully created!"
      session[:user_id] = @user.id
      redirect_to controller: 'users/:id', action: 'show'
  end

  def show
  end

  private 

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end

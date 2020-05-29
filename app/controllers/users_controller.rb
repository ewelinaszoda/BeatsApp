class UsersController < ApplicationController
  # before_action :require_logged_in, only: :show
  # skip_before_action :require_logged_in, only: [:new, :create]
  # skip_before_action :authenticate

  def sign_in
  end

  def sign_out
    session[:user_id] = nil
    redirect_to '/sign-in'
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user
      # found the user
      if @user.authenticate(params[:user][:password])
        # user managed to sign in
        session[:user_id] = @user.id
        redirect_to '/festivals'
      else
        # user failed to sign in
        flash[:errors] = ["Password invalid."]
        redirect_to '/sign-in'
      end
    else
      # not found it
      @user = User.create(user_params)
      if @user.valid?
        session[:user_id] = @user.id
        redirect_to '/'
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to '/sign-in'
      end
    end
  end

  # def sign_in
  # end 

  # def new
  #   @user = User.new(user_params)
  # end

  # def create
  #   @user = User.create(user_params)
  #   if !@user.save
  #     flash[:alert] = "You put wrong username or password. Try again!"
  #     redirect_to(controller: 'users', action: 'new')
  #   else 
  #     flash[:notice] = "Account successfully created!"
  #     session[:user_id] = @user.id
  #     redirect_to controller: 'users/:id', action: 'show'
  # end

  # def show
  # end


  
  #    # to log out from the session
  #    def destroy
  #     session.delete :user_id
  #     redirect_to '/'
  #     # redirect_to controller: 'beats', action: 'index'
  #   end
  
  # end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

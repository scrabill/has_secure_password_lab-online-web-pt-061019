class UsersController < ApplicationController
  # def create
  #   # @user = User.new
  #
  #   # @user = User.find_by(:email => params["email"])
  #   #  if @user && @user.authenticate(params["password"])
  #   #    session[:user_id] = @user.id
  #   #    redirect "/bottles"
  #   #  end
  #   #  redirect "/login"
  #
  #   # if @user.save
  #   #   session[:name] = params[:name]
  #   # end
  # end

  def create
    @user = User.find_by(name: params[:name])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

  def authenticate
    # if @user.
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end

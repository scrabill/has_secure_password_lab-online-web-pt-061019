class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

  # def create
    # @user.new
    #
    # if @user.save
    #   @user.passsword = params[:password].authenticate
    #   session[:user_id] = @user.id
    #   # log them in, create a session
    # else
    #   # flash error
    # end

    # if @user.authenticate == @user.password_digest
    #   # log them in
    # else
    # end

    # @user = User.find_by(:email => params["email"])
    #  if @user && @user.authenticate(params["password"])
    #    session[:user_id] = @user.id
    #    redirect "/bottles"
    #  end
    #  redirect "/login"
  # end
end

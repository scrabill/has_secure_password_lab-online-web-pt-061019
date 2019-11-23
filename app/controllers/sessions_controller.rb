class SessionsController < ApplicationController
  def create
    @user.new

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
  end
end

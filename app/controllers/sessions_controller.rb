class SessionsController < ApplicationController
  before_action :signed_in, only: [:create, :new]

  def new
    render :new
  end

  def create
    logger = Logger.new("my_log.txt")
    logger.info("params")
    logger.info(params)
    user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if user
      login_user!(user)
      redirect_to cats_url
    else
      flash.now[:error] = 'Wrong input'
      render :new
    end
  end

  def destroy
    user = current_user

    if user
      user.reset_session_token!
      session[:session_token] = nil
    end

    redirect_to cats_url
  end
end

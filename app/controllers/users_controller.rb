class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new[:params]
    if @user.save
      redirect_to :root_url, :notice => "Welcome!"
    else
      render :new
    end
  end
end

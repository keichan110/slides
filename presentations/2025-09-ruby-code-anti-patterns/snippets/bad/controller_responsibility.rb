class UsersController < ApplicationController
  def create
    user = User.new(params[:user])
    user.email = params[:user][:email].downcase
    user.created_at = Time.now

    if user.email.include?("@")
      user.save
      redirect_to users_path
    else
      render :new
    end
  end
end
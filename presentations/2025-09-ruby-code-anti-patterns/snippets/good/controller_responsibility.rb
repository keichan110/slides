class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end

# app/models/user.rb
class User < ApplicationRecord
  validates :email, presence: true,
                   format: { with: URI::MailTo::EMAIL_REGEXP }

  before_save :normalize_email

  private
  def normalize_email
    self.email = email.downcase.strip
  end
end
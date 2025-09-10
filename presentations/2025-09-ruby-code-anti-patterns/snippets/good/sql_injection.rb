class UsersController < ApplicationController
  def search
    search_term = params[:search]
    term = "%#{search_term}%"
    @users = User.where("name LIKE ?", term)
  end
end

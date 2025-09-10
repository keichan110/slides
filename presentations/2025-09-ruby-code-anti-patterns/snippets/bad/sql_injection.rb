class UsersController < ApplicationController
  def search
    search_term = params[:search]
    @users = User.where("name LIKE '%#{search_term}%'")
  end
end

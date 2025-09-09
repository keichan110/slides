class User < ApplicationRecord
  def valid_email?
    email.include?("@") && email.length > 5
  end

  def save_user
    if valid_email?
      save
    end
  end
end
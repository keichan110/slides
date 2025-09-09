# app/models/user.rb
class User < ApplicationRecord
  validates :email, 
    presence: true,
    format: { with: URI::MailTo::EMAIL_REGEXP }

  before_save :normalize_email

  private
  def normalize_email
    self.email = email.downcase.strip
  end
end
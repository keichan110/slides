class User < ApplicationRecord
  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  def calculate_age
    Date.current.year - birth_date.year
  end

  def format_phone_number
    phone.gsub(/(\d{3})(\d{4})(\d{4})/, '\1-\2-\3')
  end

  def generate_avatar_url
    "https://example.com/avatars/#{id}.jpg"
  end
end
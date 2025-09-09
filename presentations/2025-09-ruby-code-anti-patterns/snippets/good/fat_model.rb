# User model はシンプルに
class User < ApplicationRecord
  # メール送信は別のタイミングで呼ぶ
  after_create :send_welcome_email_later
  
  def age
    Date.current.year - birth_date.year
  end

  def avatar_url
    "https://example.com/avatars/#{id}.jpg"
  end

  private

  def send_welcome_email_later
    UserMailerJob.perform_later(self)
  end
end
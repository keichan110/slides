class User < ApplicationRecord
  scope :by_name, ->(name) { where(name: name) }
  scope :born_in_year, ->(year) {
    where(birth_date: Date.new(year).all_year)
  }
  scope :with_email_domain, ->(domain) {
    where('email LIKE ?', "%@#{domain}")
  }
  scope :taller_than, ->(height) {
    where('height > ?', height)
  }

  # よく使われる組み合わせのみ定義
  scope :active_this_month,
        -> { where(last_login: 1.month.ago..Time.current) }
end

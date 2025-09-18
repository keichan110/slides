class User < ApplicationRecord
  scope :johns, -> { where(name: 'John') }
  scope :born_in_1990,
        -> { where('YEAR(birth_date) = 1990') }
  scope :with_gmail,
        -> { where('email LIKE "%@gmail.com"') }
  scope :tall_users, -> { where('height > 180') }
end

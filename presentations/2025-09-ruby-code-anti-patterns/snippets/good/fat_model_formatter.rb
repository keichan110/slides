# 電話番号フォーマット専用
class PhoneFormatter
  def self.format(phone)
    phone.gsub(/(\d{3})(\d{4})(\d{4})/, '\1-\2-\3')
  end
end
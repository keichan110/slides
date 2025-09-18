def get_user_info(user_hash)
  required_keys = %w[name email age]

  if required_keys.all? { |key| user_hash[key] }
    "#{user_hash['name']} (#{user_hash['email']}) - #{user_hash['age']}歳"
  else
    "情報が不完全です"
  end
end
def get_user_info(user_hash)
  name = user_hash["name"]
  email = user_hash["email"]
  age = user_hash["age"]

  if name != nil && email != nil && age != nil
    return "#{name} (#{email}) - #{age}歳"
  else
    return "情報が不完全です"
  end
end
def check_status(user)
  if user.active == true
    return "アクティブ"
  else
    return "非アクティブ"
  end
end

# check_status(active_user) => "アクティブ"

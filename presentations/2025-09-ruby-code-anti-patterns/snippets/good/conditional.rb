def check_status(user)
  user.active? ? "アクティブ" : "非アクティブ"
end

# check_status(active_user) => "アクティブ"

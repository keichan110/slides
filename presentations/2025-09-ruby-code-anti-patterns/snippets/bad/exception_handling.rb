def find_user(id)
  begin
    user = User.find(id)
    return user
  rescue
    return nil
  end
end
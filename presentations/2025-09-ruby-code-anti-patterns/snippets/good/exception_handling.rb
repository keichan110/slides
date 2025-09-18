# パターン 1: find_byを使う
def find_user(id)
  User.find_by(id: id)
end

# パターン 2: 適切な例外処理
def find_user(id)
  User.find(id)
rescue ActiveRecord::RecordNotFound
  nil
end

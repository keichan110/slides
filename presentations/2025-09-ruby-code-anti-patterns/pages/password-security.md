---
layout: two-cols
class: problem-slide
---

# Q18

```ruby
# app/controllers/users_controller.rb
class User < ApplicationRecord
  def check_password(input_password)
    password == input_password
  end

  def reset_password
    new_password = SecureRandom.hex(8)
    update(password: new_password)
    UserMailer.password_reset(self, new_password).deliver_now
  end
end
```

::right::

# ヒント

<div v-click="1" class="text-gray-400">

・ うわ、パスワードが平文で保存されてる...危険すぎる

</div>

<div v-click="2" class="mt-2 text-gray-400">

・ パスワードリセットでメールに平文送っちゃダメでしょ

</div>

<div v-click="3" class="mt-2 text-gray-400">

・ Rails の`has_secure_password`使えばハッシュ化してくれるのに

</div>

---

<h1>Q18<span class="text-sm text-gray-600 ml-4">パスワードの取り扱い</span></h1>

## 問題点

- パスワードが平文で保存されている
- パスワードがメールで送信されている
- パスワードハッシュ化していない

## 改善のポイント

- **`has_secure_password`**でセキュアなパスワード管理
- **トークンベース**のパスワードリセット
- **平文パスワードの送信禁止**

---
layout: two-cols
---

<h1>Q18<span class="text-sm text-gray-600 ml-4">パスワードの取り扱い</span></h1>

## ❌ 改善前

```ruby
class User < ApplicationRecord
  def check_password(input_password)
    password == input_password
  end

  def reset_password
    new_password = SecureRandom.hex(8)
    update(password: new_password)
    UserMailer.password_reset(
      self, new_password
    ).deliver_now
  end
end
```

**重大なリスク:**

- DB が漏洩したら全パスワードがバレる
- メールが盗み見されるリスク

::right::

## ✅ 改善後

```ruby
class User < ApplicationRecord
  has_secure_password

  def reset_password
    reset_token = SecureRandom.urlsafe_base64
    self.password_reset_token = reset_token
    self.password_reset_sent_at = Time.current
    save!

    UserMailer.password_reset_instructions(
      self, reset_token
    ).deliver_now
  end
end
```

**安全性:**

- パスワードはハッシュ化して保存
- トークンで安全なリセット
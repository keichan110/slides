Rails.application.routes.draw do
  resources :users do
    collection do
      get :active    # /users/active
      get :inactive  # /users/inactive
    end

    member do
      patch :activate   # /users/:id/activate
      patch :deactivate # /users/:id/deactivate
    end
  end
end
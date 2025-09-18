Rails.application.routes.draw do
  get 'users/show_active'
  get 'users/show_inactive'
  get 'users/activate'
  post 'users/deactivate'
  get 'users/list'
  post 'users/create_new'
end
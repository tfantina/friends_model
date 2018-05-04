Rails.application.routes.draw do
  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'


  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'

  resources :users

  resources :user_sessions, only: [:new, :create, :destory]
  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  get 'friends/index'

  get 'friends/destroy'

  resources :friend_requests
end

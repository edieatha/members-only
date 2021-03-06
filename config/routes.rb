Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'posts#index'
  resources :posts, only: %i[index create new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

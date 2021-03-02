Rails.application.routes.draw do
  resources :channels
  resources :posts do
    resources :replies
  end

  root 'posts#index'

  devise_for :users, controllers: { registrations: 'registrations' }

end

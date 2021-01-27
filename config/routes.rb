Rails.application.routes.draw do

  root to: 'suppliers#index'

  resources :suppliers do
    resources :reviews
  end

end

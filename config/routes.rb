Project::Application.routes.draw do
  match '/home' => 'home#index'

  match '/select_markets' => 'farmers_markets#select_market'

  resources :carts

  resources :products

  resources :categories

  devise_for :users

  resources :farmers_markets do
    collection do
      get 'get_nearby_markets'
    end
  end
end

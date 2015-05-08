Project::Application.routes.draw do

  match '/home' => 'home#index'

  match '/select_markets' => 'farmers_markets#select_market'

  match '/select_product' => 'home#shop'

  get '/categories/:id/get_categories' => 'categories#get_categories'

  resources :products do
    collection do
      get 'get_all_products'
    end

    collection do
      get 'get_products'
    end
  end

  resources :categories do
    collection do
      get 'get_all_categories'
    end
  end

  devise_for :users

  resources :carts do
    collection do
      get 'add_to_cart'
    end
  end

  resources :farmers_markets do
    collection do
      get 'get_nearby_markets'
    end

    collection do
      get 'set_market'
    end
  end
end

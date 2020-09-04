Rails.application.routes.draw do
  root to: 'home#index'
  get 'productslisting', to: 'home#productslisting'
  get 'orderslisting', to: 'home#orderslisting'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

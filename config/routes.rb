Spree::Core::Engine.routes.draw do
  match '/gateway/:order_id/ccavenue/:payment_method_id' => 'ccavenue#show', :as => :gateway_ccavenue, via: [:get, :post]
  match '/gateway/ccavenue/:id/callback' => 'ccavenue#callback', :as => :gateway_ccavenue_callback, via: [:get, :post]

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :payment_methods, only: %i() do
        get :ccavenue, on: :collection
      end
    end
  end
end

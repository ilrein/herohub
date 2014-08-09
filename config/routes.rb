Rails.application.routes.draw do
  
  get 'orders/index'
  get 'orders/show/:id', to: 'orders#show', as: 'order'
  get 'orders/create'
  get 'orders/po'
  post 'orders/create'
  get 'orders/new'
  resources :pos, :controller => 'orders'
  #resources :suppliers, :controller => "orders"

  get 'locations/index'
  get 'locations/new'

  post 'locations/create'

  get 'locations/update'

  get 'locations/destroy'

  get 'locations/show'


  get 'products/new'

  get 'products/create'

  get 'products/update'

  get 'products/edit'

  get 'products/destroy'

  get 'products/index'

  get 'products/show/:id', to: 'products#show', as: 'product'

  get 'companies/index'

  get 'companies/create'

  get 'companies/show'

  get 'companies/destroy'

  devise_for :users
  root 'pages#index'
  get 'pages/index'

  get 'pages/about'

  get 'pages/services'

  get 'pages/contact'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

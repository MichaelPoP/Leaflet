Rails.application.routes.draw do
  root 'site#landing'

  post '/search', to: 'search#results', as: 'search'

  get 'about', to: 'site#about'

  post 'access', to: 'access#log_in', as: 'access'

  delete 'access', to: 'access#sign_out'

  get 'users/:id/home', to: 'users#home', as: 'home'

  get 'users/:user_id/groups/:id/add', to: 'groups#add_users', as: 'group_add_user'

  post 'users/:user_id/groups/:id/add', to: 'groups#add_user'

  delete 'users/:user_id/groups/:id/delete', to: 'groups#user_remove', as: 'remove_user_from_group'

  get 'users/:id/friends', to: 'friends#index', as: 'friends'

  post 'users/:id/friends', to: 'friends#create'

  delete 'users/:id/friends', to: 'friends#destroy'

  resources :users do 
    resources :groups, :water_bills, :gas_bills, :electric_bills
  end

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

Rails.application.routes.draw do
  devise_for :admin_users#, ActiveAdmin::Devise.config
  root to: "properties#index"
  #ActiveAdmin.routes(self)
  get 'properties/index'
  resources :properties

  get 'homes/index'

  devise_for :users
  match '/properties_detail/:id',   to: 'properties#properties_detail',   via: 'get'
 match '/index',   to: 'homes#index',   via: 'get'
  match '/contact',   to: 'homes#contact',   via: 'get'
  match '/about_us',   to: 'homes#about_us',   via: 'get'
  match '/login',   to: 'homes#login',   via: 'get'
  match '/agents',   to: 'homes#agents',   via: 'get'
  match '/career',   to: 'homes#career',   via: 'get'
 
  match '/custum-bg',   to: 'homes#custum-bg',   via: 'get'
  
 
  match '/galeries',   to: 'homes#galeries',   via: 'get'
 
  
  match '/home_full_slider',   to: 'homes#home_full_slider', via: 'get'
  match '/home_simple',   to: 'homes#home_simple', via: 'get'
  match '/news',   to: 'homes#news',   via: 'get'
  
 
  
  match '/properties_filter',   to: 'homes#properties_filter',   via: 'get'
  
  match '/sing_up',   to: 'homes#sing_up',   via: 'get'
  
   match '/upload_step1',   to: 'homes#upload_step1',   via: 'get'
  match '/upload_step2',   to: 'homes#upload_step2',   via: 'get'
  match '/upload_step3',   to: 'homes#upload_step3',   via: 'get'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root  'homes#index'

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

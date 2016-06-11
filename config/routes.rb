Rails.application.routes.draw do

  root "plants#index"

  # Routes for the Sill resource:
  # CREATE
  get "/sills/new", :controller => "sills", :action => "new"
  post "/create_sill", :controller => "sills", :action => "create"

  # READ
  get "/sills", :controller => "sills", :action => "index"
  get "/sills/:id", :controller => "sills", :action => "show"

  # UPDATE
  get "/sills/:id/edit", :controller => "sills", :action => "edit"
  post "/update_sill/:id", :controller => "sills", :action => "update"

  # DELETE
  get "/delete_sill/:id", :controller => "sills", :action => "destroy"
  #------------------------------


  # Routes for the Care resource:
  # CREATE
  get "/cares/new", :controller => "cares", :action => "new"
  post "/create_care", :controller => "cares", :action => "create"

  # READ
  get "/cares", :controller => "cares", :action => "index"
  get "/cares/:id", :controller => "cares", :action => "show"

  # UPDATE
  get "/cares/:id/edit", :controller => "cares", :action => "edit"
  post "/update_care/:id", :controller => "cares", :action => "update"

  # DELETE
  get "/delete_care/:id", :controller => "cares", :action => "destroy"
  #------------------------------

  # Routes for the Plant resource:
  # CREATE
  get "/plants/new", :controller => "plants", :action => "new"
  post "/create_plant", :controller => "plants", :action => "create"

  # READ
  get "/plants", :controller => "plants", :action => "index"
  get "/plants/:id", :controller => "plants", :action => "show"

  # UPDATE
  get "/plants/:id/edit", :controller => "plants", :action => "edit"
  post "/update_plant/:id", :controller => "plants", :action => "update"

  # DELETE
  get "/delete_plant/:id", :controller => "plants", :action => "destroy"
  #------------------------------

  # Routes for the User resource:

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  devise_for :users
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

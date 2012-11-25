InsuranceCodeFinder::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  get '/insurance_entries/index' => 'insurance_entries#index'
  get '/insurance_entries/search' => 'insurance_entries#search'
  get '/insurance_entries/create' => 'insurance_entries#create'
  get '/insurance_entries/add' => 'insurance_entries#add'
  get '/insurance_entries/new' => 'insurance_entries#new'
  get '/insurance_entries/list' => 'insurance_entries#list'
  get '/insurance_entries/delete' => 'insurance_entries#delete'
  get '/insurance_entries/update' => 'insurance_entries#update'
  get '/insurance_entries/update_entry' => 'insurance_entries#update_entry'
  
  
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

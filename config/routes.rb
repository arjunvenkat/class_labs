ClassLabs::Application.routes.draw do

  root to: 'Pages#landing'

  resources :roadblocks do
    member do
      get 'set_status'
      post 'set_solution'
    end
  end


  resources :users do
    member do
    get 'set_status'
    end
  end

  resources :tasks


  resources :labs

  resources :enlistments

  get '/enlistment_tasks/:id/set_status'=> 'enlistment_tasks#set_status', :as => :set_status_enlistment_task
  post '/enlistment_tasks/:id/set_error_description' => 'enlistment_tasks#set_error_description', :as => :set_error_description_enlistment_task

  get '/login' => 'sessions#new', as: 'login'
  post "sessions" => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'
  # The priority is based upon order of creation:
  # first created -> highest priority.

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

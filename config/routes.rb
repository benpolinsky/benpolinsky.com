Rails.application.routes.draw do

  devise_for :admins  
  # mount BpCustomFields::Engine => "administration/custom_fields", as: "bp_custom_fields"
  
  namespace :administration do
    resources :links do
      collection do
        post 'update_row_order'
      end
    end
  
    resources :projects do
      collection do
        post 'update_row_order'
      end
    end
    
    resources :admins
    
    root to: 'projects#index'
  end
  
  get 'home' => 'front#home', as: :home
  get 'about' => 'front#about', as: :about

  get 'projects' => 'front#projects', as: :front_projects
  get 'project/:id' => 'front#project', as: :front_project
  post 'contact' => 'front#contact', as: :contact
  
  root to: 'front#home'
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

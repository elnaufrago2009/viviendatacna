Mvivienda::Application.routes.draw do
  resources :comunicados

  get "notices/pnew" => "notices#pnew"

  resources :notices

  resources :directorios

  resources :normativos

  resources :institucionals



  get "inicios/index" => "inicios#index"
  get "admin/index" => "admin#index"
  get "admin" => "admin#index"
  get "inicios/paginas/:id" => "inicios#paginas#:id"
  get "inicios/directorio" => "inicios#directorio"
  get "inicios/directorio_detalle/:id" => "inicios#directorio_detalle#:id"
  get "inicios/gestion" => "inicios#gestion"  
  get "inicios/noticia/:id" => "inicios#noticia#:id"
  get "inicios/noticias" => "inicios#noticias"
  get "inicios/comunicados" => "inicios#comunicados"
  get "inicios/comunicado/:id" => "inicios#comunicado#:id"
  get "inicios/responsable" => "inicios#responsable"
  get "inicios/mi_vivienda" => "inicios#mi_vivienda"
  


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
   root :to => 'inicios#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

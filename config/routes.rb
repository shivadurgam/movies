RealtimeProject1::Application.routes.draw do


  get 'movies/index' => "movies#index", as: 'home'
  
  get 'movies/movie/:id' => "movies#show_movie", as: 'show_movie'
  get 'movies/movie/:id/edit' => "movies#edit_movie", as: 'edit_movie'
  patch 'movies/movie/:id' => "movies#update_movie"
  put 'movies/movie/:id' => "movies#update_movie", as: 'movie'

  get 'movies/theatre/:id' => "movies#show_theatre", as: 'show_theatre'
  get 'movies/theatre/:id/edit' => "movies#edit_theatre", as: 'edit_theatre'
  patch 'movies/theatre/:id' => "movies#update_theatre"
  put 'movies/theatre/:id' => "movies#update_theatre", as: 'theatre'

  get 'movies/search' => "movies#search"
  
  



 # get '/exams' => "exams#home", as: 'exams'
  #post '/exams' => "exams#create"
  #get '/exams/new' => "exams#new", as: 'new_exam'
  #get '/exams/:id/edit' => "exams#edit", as: 'edit_exam'
  #get '/exams/:id' => "exams#show", as: 'exam' 
  #patch '/exams/:id' => "exams#update"
  #put '/exams/:id' => "exams#update"
  #delete '/exams/:id' => "exams#destroy"

  #root :to => "exams#home"

    
 













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

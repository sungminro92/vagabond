Rails.application.routes.draw do

  # resources :cities do
  #     resource :posts
  # end  ----> THIS WILL DO ALL ROUTES WELL.

  devise_for :users
  get '/' => 'cities#index' # list all cities page

  get '/cities' => 'cities#index', as: 'city'
  get '/cities/:id' => 'cities#show', as: 'show'

  get '/cities/:city_id/posts/new' => 'posts#new', as: 'new'

  post '/cities/:city_id' => 'posts#create'

  get '/cities/:city_id/posts/:id' => 'posts#show', as: 'post_show'

  get '/cities/:city_id/posts/:id/edit' => 'posts#edit', as: 'edit'

  put '/cities/:city_id/posts/:id' => 'posts#update'

  delete '/cities/:id' => 'posts#destroy', as: 'post'



  # ADDED for root
  root 'cities#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

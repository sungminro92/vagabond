Rails.application.routes.draw do
  
  get '/cities/:city_id/posts/new' => 'posts#new', as: 'new'

  # post '/cities/:city_id/posts'

  # get '/cities/:city_id/posts/:id'

  # get '/cities/:city_id/posts/:id/edit'
  
  # put '/cities/:city_id/posts/:id'

  # delete '/cities/:city_id/posts/:id'

  devise_for :users
  get '/' => 'cities#index' # list all cities page
  get '/cities' => 'cities#index', as: 'city' 



  get '/cities/:id' => 'cities#show', as: 'show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do
  devise_for :users
  get '/' => 'cities#index' # list all cities page
  get '/cities' => 'cities#show', as: 'city' # city show page

  # get '/cities/:id' => 'cities#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

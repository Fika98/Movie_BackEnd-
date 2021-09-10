Rails.application.routes.draw do
#   resources :comments, only: [:index]
  post '/movies/:movie_id/comments', to: 'comments#create'
  delete 'movies/:movie_id/comments/:comment_id', to: 'comments#destroy'
  resources :movies 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do

  resources :questions do
    resources :answers
  end

  get '/' => redirect('/questions')
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end

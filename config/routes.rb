Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'home#index'
  root 'home#index'
  get '/theloai/:id' => 'theloais#show' ,as: :theloai
  get '/truyen/:id' => 'truyens#show'   ,as: :truyen
  get '/new' =>'new#show'
  get '/signup'  => 'users#new'
  resources :users
  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/uptruyen' =>'truyens#new'
  resources :truyens
  resources :comments
  get '/themtheloai' =>'theloais#new'
  resources :theloais
  get '/edittruyen' =>'truyens#list'
  get '/admin' =>'admin#show'
  patch '/truyen/:id' => 'truyens#update'
  post  '/truyen/:id' => 'comments#create'

  end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts', controller: 'posts', action:'index'
  get '/photos(/:id)', controller: 'posts', to: 'posts#index'
  get '/photos/redirect', controller:'posts', to: redirect('/posts')
  #as will create path -> logout_path
  get 'exit', controller: 'posts', to:'posts#index', as: :logout
 
  get '/products/delete', controller: 'products', to:'products#delete'

  resources :products, path_names:{new:'home'} do
    member do 
      get 'preview'
      post 'preview'
    end
    collection do
    get 'search' 
    end
    resources :serial , only:[:index, :show, :create]
  end
 
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog#index"

  get '/check_deploy', to: 'posts#check_deploy'

  resources :blog, only: [], controller: 'posts' do
    collection do
      get :index

    end
  end

  get :show, path: '/:title', as: :blog, controller: 'posts'
end

Rails.application.routes.draw do
  get('/', to: 'welcome#index', as: :home )

  resources :ideas do
    resources :reviews
    resources :likes, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

end

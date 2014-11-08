Rails.application.routes.draw do
  mount_carnival_at ''

  resources :posts do
    member do
      get 'publish'
      get 'archive'
    end
  end

  resources :tags
  resources :categories
end

Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
  }
  devise_for :customers, controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }

  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show, :edit, :update, :destroy]
  end

  namespace :public do
    resources :customers, only: [:index, :show, :edit, :update]
    get '/customers/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    patch '/customers/withdraw' => 'customers#withdraw', as: 'withdraw'
    resources :posts, only: [:index, :show, :edit, :create, :update, :destroy]
    resources :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
    post '/tags/information' => 'tags#create', as: 'create_tag'
  end

  root to: 'public/homes#top'
end

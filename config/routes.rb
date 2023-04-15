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
    resources :customers, only: [:index, :show, :edit, :update] do
      get '/customers/unsubscribe' => 'customers#unsubscribe'
      patch '/customers/withdraw' => 'customers#withdraw'
      resource :relationships, only: [:create, :destroy]
      get :followings, on: :member
      get :followers, on: :member
    end
    resources :posts, only: [:index, :new, :show, :edit, :create, :update, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :post_comments, only: [:create, :destroy]
    end
    resources :tags, only: [:show, :create]
  end

  root to: 'public/homes#top'
end

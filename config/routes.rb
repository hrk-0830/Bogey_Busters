Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
  }
  devise_for :customers, skip: [:passwords], controllers: {
    sessions: 'public/sessions',
    registrations: 'public/registrations'
  }


  namespace :admin do
    resources :customers, only: [:index, :show, :update] do
      member do
        put '/customers/withdraw' => 'customers#withdraw'
      end
    end
    resources :posts, only: [:index, :show, :update, :destroy] do
      resources :post_comments, only: [:destroy]
    end
    resources :searches, only: [:index]
    get "search" => "searches#search"
  end

  root to: 'public/homes#top'

  namespace :public do
    post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
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
    get "search_prefecture" => "posts#search_prefecture", as: "search_prefecture"
    resources :tags, only: [:show]
    resources :searches, only: [:index]
    get "search" => "searches#search"
  end
end

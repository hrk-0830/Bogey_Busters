Rails.application.routes.draw do
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
  end
  namespace :public do
    get 'homes/top'
  end
  namespace :public do
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/index'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

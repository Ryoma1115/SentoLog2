Rails.application.routes.draw do

  namespace :users do
    get 'oyutypes/show'
  end
  namespace :users do
    get 'kounous/show'
  end
  root 'homes#top'
  get 'about' => 'homes#about'


  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  namespace :users do
    post 'create' => 'onsen_spots#create'
    resources :onsen_spots, only:[:index, :show, :edit, :update, :destroy, :new,] do
      resource :likes, only:[:index, :create, :destroy]
      resource :wents, only:[:index, :create, :destroy]
      resources :reviews do
        resource :favorites, only:[:create, :destroy]
      end
    end
    patch 'users/withdraw' => 'users#withdraw', as: 'users_withdraw'
    get 'show' => 'users#show'
    get 'users/edit' => 'users#edit'
    patch 'update' => 'users#update', as: 'update'
    get 'quit' => 'users#quit'
    resources :contacts, only: [:new, :create]
    resources :sensitsus, only: [:index, :create, :edit, :update, :show]
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  namespace :admins do
    get 'top' => 'homes#top'
    resources :users, only: [:index, :edit, :update, :show]
    resources :onsen_spots, only: [:show, :index, :new, :create, :edit, :update]
    resources :sensitsus, only: [:index, :create, :edit, :update]
    delete 'destroy' => 'sensitsus#destroy', as: 'destory'
    resources :kounous, only: [:index, :create, :edit, :update]
    delete 'destroy' => 'kounous#destroy', as: 'destroy/kounou'
    resources :oyutypes, only: [:index, :create, :edit, :update]
    delete 'destroy' => 'oyutypes#destroy', as: 'destroy/oyutype'
  end


  
end

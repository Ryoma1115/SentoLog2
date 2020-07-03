Rails.application.routes.draw do

  root 'homes#top'
  get 'about' => 'homes#about'


  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  namespace :users do
    resources :onsen_spots, only:[:index, :show, :edit, :update, :destroy] do
      resource :likes, only:[:index, :create, :destroy]
      resource :wents, only:[:index, :create, :destroy]
      resources :reviews do
        resource :favorites, only:[:create, :destroy]
      end
    end
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  

  
end

Rails.application.routes.draw do

  root to: 'homes#top'

  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}
  resources :users,only: [:show,:index,:edit,:update]
  resources :movies

  get 'home/about' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

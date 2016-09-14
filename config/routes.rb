Rails.application.routes.draw do
  
  devise_for :users, path: "auth", controllers: {registrations: 'users/registrations'}
  
  root to: "home#index"

  get 'settings/profile' => 'profiles#edit'
  # get 'settings/admin' => 'users/registrations#edit'

  resources :profiles, only: [:show, :edit, :update], path: 'u' do
  	get :avatar, on: :member
  	get :avatar_thumb, on: :member
  	get :avatar_medium, on: :member
  end
  
  resources :pets do
  	get :photo, on: :member
  	get :photo_thumb, on: :member
  	get :photo_medium, on: :member
  end

  get 'search' => 'searches#index'

  match '/images/uploads/profile/avatar/:id/:filename' => 'profiles#avatar_thumb', constraints: { filename: /thumb.*/ }, via: :get
  match '/images/uploads/profile/avatar/:id/:filename' => 'profiles#avatar_medium', constraints: { filename: /medium.*/ }, via: :get

  # match '/images/uploads/pet_photo/photo/:pet_id/:id/:filename' => 'pets#photo_thumb', constraints: { filename: /thumb.*/ }, via: :get
  # match '/images/uploads/pet_photo/photo/:pet_id/:id/:filename' => 'pets#photo_medium', constraints: { filename: /medium.*/ }, via: :get
end

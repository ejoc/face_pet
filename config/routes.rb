Rails.application.routes.draw do
  devise_for :users, path: "auth", controllers: {registrations: 'users/registrations'}
  
  root to: "home#index"

  resource :profile, only: [:show, :edit, :update]

    match '/images/uploads/profile/avatar/:id/:filename' => 'profiles#avatar_thumb', constraints: { filename: /thumb.*/ }, via: :get
  match '/images/uploads/profile/avatar/:id/:filename' => 'profiles#avatar_medium', constraints: { filename: /medium.*/ }, via: :get
end

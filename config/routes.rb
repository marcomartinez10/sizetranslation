Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get '/users/sign_up' => 'devise/registrations#new'

  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  # authenticated :user do
  #   root to: 'topics#index', as: :authenticated_root
  # end

  match 'home/index' => "home#index", as: :user_root, via: [:get]

end

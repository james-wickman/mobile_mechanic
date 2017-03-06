Rails.application.routes.draw do
  get 'mechanics/index'

  get 'mechanics/show'

  get 'home/index'

  get 'users/index'

  get 'users/show'

	devise_for :mechanics, controllers: {
        sessions: 'mechanics/sessions',
        registrations: 'mechanics/registrations'
    }
	devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
  # devise_for :mechanics
  # devise_for :users

	root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

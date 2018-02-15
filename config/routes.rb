Rails.application.routes.draw do
  resources :trackings
	devise_for :users
	
	devise_scope :user do
	  authenticated :user do
	    root :to => 'trackings#index'
	  end
	  unauthenticated :user do
	    root :to => 'devise/sessions#new', as: :unauthenticated_root
	  end
	end

	get 'update_trackings' => 'trackings#update_trackings'

	resources :users, except: :create

	post 'create_user' => 'users#create', as: :create_user
end

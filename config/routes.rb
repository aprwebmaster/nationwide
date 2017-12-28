Rails.application.routes.draw do
 
  devise_for :users
  resources :users, only: [:update]
 
  resources :accounts do
  	resources :service_comments do
  	end
  end

  resources :accounts do 
    resources :service_records do
    end
  end



  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

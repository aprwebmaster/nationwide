Rails.application.routes.draw do
 

  resources :meetings
  devise_for :users
  resources :users

 
  resources :accounts do
  	resources :service_comments do
  	end
  end

 

  resources :accounts do
    resources :stores do
    end
  end

  resources :stores do
    resources :service_records do
      end
  end

  resources :subcontractors do
    resources :employees do
    end
  end
  
  resources :employees 
  resources :stores
  resources :service_records
  resources :calendar 

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

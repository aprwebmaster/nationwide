Rails.application.routes.draw do
 
  get 'service_comments/index'

  get 'service_comments/show'

  get 'service_comments/new'

  get 'service_comments/edit'

  resources :accounts


  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

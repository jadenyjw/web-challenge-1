Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "sessions#new"
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  
  scope '/api/v1' do  
    resources :secrets
  end  
  
  
end

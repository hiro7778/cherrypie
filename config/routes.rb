Rails.application.routes.draw do
  devise_for :males, controllers: {
    sessions:      'males/sessions',
    passwords:     'males/passwords',
    registrations: 'males/registrations'
  }
  
  root to: "top#index"
end

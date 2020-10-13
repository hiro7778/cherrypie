Rails.application.routes.draw do
  devise_for :males, controllers: {
    sessions:      'males/sessions',
    passwords:     'males/passwords',
    registrations: 'males/registrations'
  }
  
  devise_scope :males do
    get 'males/new', to: 'males/registrations#new'
  end
  root to: "top#index"
end

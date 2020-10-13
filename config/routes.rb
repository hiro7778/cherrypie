Rails.application.routes.draw do
  devise_for :males
  root to: "top#index"
end

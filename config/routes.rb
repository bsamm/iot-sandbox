Rails.application.routes.draw do
  get 'pages/home'
  post 'pages/toggle_led'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

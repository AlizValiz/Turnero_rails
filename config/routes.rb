Rails.application.routes.draw do
  get 'welcome/index'
  resources :cita
  resources :doctor_logs
  resources :patient_logs
  resources :patient_logins
  get "index", to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

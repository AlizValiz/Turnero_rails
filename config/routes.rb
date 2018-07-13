Rails.application.routes.draw do
  resources :cita
  resources :doctor_logs
  resources :patient_logs
  resources :patient_logins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

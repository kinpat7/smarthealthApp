Rails.application.routes.draw do

  root "patients#index"

  get 'checkups/index'

  get 'checkups/show'

  get 'checkups/new'

  get 'checkups/edit'

  resources :hospitals
  resources :clinics
  resources :doctors
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

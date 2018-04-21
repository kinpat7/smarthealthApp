Rails.application.routes.draw do

  get 'requests/index'

  get 'requests/show'

  get 'requests/new'

  get 'requests/edit'

  devise_for :users
  root "pages#home"

  get 'checkups/index'

  get 'checkups/show'

  get 'checkups/new'

  get 'checkups/edit'

  get 'reports/generate'

  post 'reports/display'

  resources :hospitals
  resources :clinics
  resources :doctors
  resources :patients do
    resources :requests
  end
  resources :patients do
  resources :checkups

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end

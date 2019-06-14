Rails.application.routes.draw do
  resources :projects do
    post '/workers', to: 'projects#add_worker', as: 'add_worker'
    delete '/workers/:id', to: 'projects#remove_worker', as: 'remove_worker'
  end
  resources :workers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :characters

  root 'welcome#index'
end

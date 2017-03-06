Rails.application.routes.draw do
  resources :characters do
    resources :stats
  end

  root 'welcome#index'
end

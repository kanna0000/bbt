Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  post '/', to: 'welcome#index'

  get 'transactions/index', to: 'transactions#index'
  post 'transactions/build', to: 'transactions#build'
end

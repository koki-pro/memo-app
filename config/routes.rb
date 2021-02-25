Rails.application.routes.draw do
  get 'top', to: 'top#index'

  namespace :api, format: 'json' do
    resources :memos, only: [:index, :create]
  end
end

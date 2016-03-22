Rails.application.routes.draw do
  resources :transcriptions

  root 'transcriptions#index'
end

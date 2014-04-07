Trimet::Application.routes.draw do
  resources :lines
  resources :stations
  root to: 'stations#index'
end

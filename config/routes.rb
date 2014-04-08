Trimet::Application.routes.draw do
  resources :lines
  resources :stations
  resources :buses, :except => [:index] do
    resources :arrivals
  end
  root to: 'stations#index'
end

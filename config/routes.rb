Rails.application.routes.draw do
  
  resources :zombie1s
  resources :zombies
  root "zombie1s#index"
  # resources :zombies
  # root "zombies#index" aca es la ruta de de lo que queremos como raiz
end

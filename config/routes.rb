Rails.application.routes.draw do
  resources :empleados
  resources :servicios
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/credit'
  resources :productos
  resources :marcas
  resources :personas
  
  resources :personas do
    collection do
        get :search
    end
 end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'static_pages#home'
end

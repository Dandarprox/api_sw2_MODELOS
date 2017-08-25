Rails.application.routes.draw do
  # get 'libro/titulo:string'

  # get 'libro/editorial:text'

  # get 'libro/no_pag:int'

  resources :profesors
  resources :libros
  resources :estudiantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

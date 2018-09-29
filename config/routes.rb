
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'book#index'
 
 
    get 'libros/todos', to: 'book#index'
    get'libros/nuevo',to:'book#new'
    post'libros/crear',to: 'book#create'
    get 'libro/mostrar/:id', to: 'book#show'
    post 'libro/borrar/:id',  to: 'book#delete'



  end
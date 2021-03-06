
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'book#index'
 
 
    get 'libros/todos', to: 'book#index'
    get'libros/nuevo',to:'book#new'
    post'libros/crear',to: 'book#create'
    get 'libro/mostrar/:id', to: 'book#show'
    post 'libro/borrar/:id',  to: 'book#delete'

    get 'mis-libros/todos', to: 'userbook#index'
    post 'mis-libros/agregar', to: 'userbook#add'


  end

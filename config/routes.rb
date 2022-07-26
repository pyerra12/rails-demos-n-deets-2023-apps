Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/todos')

  get 'todos', to: 'todos#index', as: 'todos'
  post 'todos', to: 'todos#create'
  get 'todos/new', to: 'todos#new', as: 'new_todo'
  get 'todos/:id', to: 'todos#show', as: 'todo'

end

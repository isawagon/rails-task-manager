Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'index', to: 'tasks#index#'
  # lire toutes les taches
  get 'tasks' => 'tasks#index'
  # create a task
  get 'tasks/new' => 'tasks#new'
  post 'tasks' => 'tasks#create'
  # lire 1 tache
  get 'tasks/:id' => 'tasks#show#', as: :task


end

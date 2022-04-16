Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'index', to: 'tasks#index#'
  # lire toutes les taches
  get 'tasks'           => 'tasks#index'
  # create a task
  get 'tasks/new'       => 'tasks#new',   as: :new_task
  post 'tasks'          => 'tasks#create'
  # destroy a task
  delete 'tasks/:id'    => 'tasks#destroy'
  # lire 1 tache
  get 'tasks/:id'       => 'tasks#show#', as: :task
  # edit a task
  get 'tasks/:id/edit'  => 'tasks#edit',  as: :edit_task
  patch 'tasks/:id'     => 'tasks#update'
end

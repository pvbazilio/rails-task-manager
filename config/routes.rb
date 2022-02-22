Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tasks', to: 'tasks#index', as: :tasks
  patch "tasks/:id", to: "tasks#update"
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"
  get 'tasks/:id', to: 'tasks#show', as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  delete "tasks/:id", to: "tasks#destroy"
end

Rails.application.routes.draw do
  # frozen_string_literal: true
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # index
  get 'tasks', to: 'tasks#index'

  # create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end

Rails.application.routes.draw do
  root "tasks#index" # sets the application homapage, 
                     # routes the request of homepag to
                     # the tasks>index page in ./views/tasks/index.html.erb


  resources :tasks

  # get "/tasks", to: 'tasks#index'
  # get "/tasks/:id", to: "tasks#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

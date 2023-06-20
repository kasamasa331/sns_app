Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  get 'posts/index', to: 'posts#index', as: 'index_Action'
  
  # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_Action'
  get 'topics/edit', to: 'topics#edit', as: 'edit_Action'
  
end


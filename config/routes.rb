Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphiql"
    end
  post "/graphiql", to: "graphql#execute"
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/waters" => "waters#index"
    get "/waters/:id" => "waters#show"
    post "/waters" => "waters#create"
    patch "/waters/:id" => "waters#update"
    delete "/waters/:id" => "waters#destroy"
  end
end

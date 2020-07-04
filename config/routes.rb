Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'pages#home'
# No route matches [GET] "/about" get is the type of request /about is the route since this is a get request we can do the following
# simple static about page we can use  the pages controller that we made to handle the about action
get 'about', to: 'pages#about'
# now we have to create that in the views/pages and add it in the controller other wise we get an unknow action error from the controller as well as a template not found error in the views/pages no template found 

resources :blogs , only: [:show]



end

Rails.application.routes.draw do 
  root 'home#index'
  
  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/questions' => 'home#temp'
  post '/answer' => 'home#temp'

  get '/questions/:id' => 'home#question'
end

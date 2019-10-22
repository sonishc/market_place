Rails.application.routes.draw do
  post '/upload', to: 'parser#create', as: 'create'
  put '/upload', to: 'parser#update', as: 'update'
end

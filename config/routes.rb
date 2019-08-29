Rails.application.routes.draw do
  devise_for :users, path: 'users'  # eg. http://localhost:3000/users/sign_in
  devise_for :admins, path: 'admins' # eg. http://localhost:3000/admins/sign_in

  resources :students
end




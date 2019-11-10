Rails.application.routes.draw do
  root to: "site_info#index"

  namespace :api do
    namespace :v1 do
      # user auth end registration
      post "authenticate", to: "authentication#authenticate"
      post "registration", to: "authentication#registration"
      # doctors specializations
      get "specializations", to: "specializations#index"
      # doctors info
      get "doctors", to: "doctors#index"
      get "doctors/:id", to: "doctors#show"
      # appointments
      get "appointments", to: "appointments#index"
      post "appointments/:id", to: "appointments#make"
      patch "appointments/:id", to: "appointments#cancel"
      # user appointments list
      get "my_appointments", to: "appointments#user_appointments_list"
    end
  end
end

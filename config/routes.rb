Rails.application.routes.draw do
  resources :doctor_edu_articles
  resources :patients, :except => [:new]
  devise_for :doctors, :controllers => {:registrations => 'registrations'}

  get 'patients/index'
  get 'doctors/all_doctors'
  get 'doctors/all_articles'
  get 'doctors/home'
  # This route is for pass doctor id value to patients form implicitly
  get 'patients/new/:id', :to => 'patients#new', :as => 'new_patient'
  get 'doctors/show_doctor/:id', :to => 'doctors#show_doctor', :as => 'show_doctor'

  root 'doctors#home'
  

end

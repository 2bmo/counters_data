Rails.application.routes.draw do

  get 'dashboard/index'
  root 'dashboard#index'


  get 'customers/dashboard', as: 'customer_root'

  devise_for :customers, path: 'customers', controllers: {
      sessions: "customers/sessions",
      registrations: "customers/registrations",
      confirmations: "customers/confirmations",
      passwords: "customers/passwords",
      unlocks: "customers/unlocks"
  }


  get 'admins/dashboard', as: 'admin_root'

  devise_for :admins, path: 'admins', controllers: {
      sessions: "admins/sessions",
      registrations: "admins/registrations",
      confirmations: "admins/confirmations",
      passwords: "admins/passwords",
      unlocks: "admins/unlocks",
  }


end

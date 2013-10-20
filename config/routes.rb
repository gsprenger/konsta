Konsta::Application.routes.draw do
  # Dashboard
  get "dashboard" => "dashboard#index"
  get "update"    => "dashboard#update"

  # Settings
  get "settings"         => "settings#account"
  get "settings/account" => "settings#account"
  get "settings/banks"   => "settings#banks"

  # Static Pages
  get "welcome" => "static_pages#home"
  get "about"   => "static_pages#about"
  get "contact" => "static_pages#contact"
  get "legal"   => "static_pages#legal"
  
  root "static_pages#home"
end

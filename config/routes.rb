FifteenthOrg::Application.routes.draw do
  resources :homes

  root :to => "homes#welcome"
end

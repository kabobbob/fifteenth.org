FifteenthOrg::Application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/'
    resources :homes

    root :to => "homes#welcome"
  end
end

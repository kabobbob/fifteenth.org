FifteenthOrg::Application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    root :to => "main#index"

    resources :businesses

    resource :calendar, :controller => 'calendar'

    resources :contacts

    resources :links

    resource :main, :controller => 'main' do
      get 'about', :on => :member
    end

    resources :ministries

    resource :pastor, :controller => 'pastor'

    resources :photos

    resources :prayer_requests

    resource :schedule, :controller => 'schedule'

    resources :sermons
  end
end

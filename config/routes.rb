FifteenthOrg::Application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    root :to => "main#index"

    resource :main, :controller => 'main' do
      #get 'home', :on => :member
    end
  end
end

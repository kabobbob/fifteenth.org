set :application, 'themcclellanclan'
set :repository,  "git@t-rac:themcclellanclan.git"
set :rails_env, 'production'
set :scm, :git
set :user, 'www'
set :rvm_ruby_string, "ruby-1.8.7-p334@#{application}"
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy

role :web, '174.143.244.54'
role :app, '174.143.244.54'

before "deploy:update", "config:passenger_stop"
after "deploy:update", "config:symlink", "config:bundle"

namespace 'config' do
  task :passenger_stop do
    run "cd #{current_path} && passenger-socket-stop"
  end

  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/bundle #{release_path}/vendor/bundle"
  end

  task :bundle do
    run "cd #{current_path} && bundle install --path=#{current_path}/vendor/bundle --without development"
  end
end

namespace :deploy do
  task :start do
  end

  task :stop do
  end

  desc 'restart the app'
  task :restart, :roles => :app do
    run "cd #{current_path} && passenger start --socket /tmp/#{application}.local.socket -e #{rails_env} -d"
  end
end

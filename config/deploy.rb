# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'shop'
set :repo_url,    'git@github.com:kaaatom/shop.git'
set :deploy_to,   '/home/rails'
set :linked_dirs, fetch(:linked_dirs) + %w{public/uploads}

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end

# after :'deploy:updated', :'newrelic:notice_deployment'
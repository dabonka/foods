# config valid only for current version of Capistrano
lock '3.7.0'

# Название приложения
set :application, 'foods'
# Путь к git репозиторию
set :repo_url, 'git@github.com:dabonka/foods.git'
# Ветка по-умолчанию
set :branch, 'deploy'
# Директория для деплоя
set :deploy_to, '/home/deploy/applications/foods'

set :log_level, :info
# Копирующиеся файлы и директории (между деплоями)
set :linked_files, %w{config/database.yml config/settings.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/uploads}

# Ruby свистелки
set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_roles, :all

# А это рекомендуют добавить для приложений, использующих ActiveRecord
set :puma_init_active_record, true

desc 'Run rake tasks on server'
task :rake do
  on roles(:app), in: :sequence, wait: 5 do
    within release_path do
      with rails_env: :production do
        execute :rake, ENV['task'], 'RAILS_ENV=production'
      end
    end
  end
end

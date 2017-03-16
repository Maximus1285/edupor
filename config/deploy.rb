# config valid only for current version of Capistrano
lock "3.7.2"

set :application, 'edupor'
set :repo_url, 'git@github.com:Maximus1285/edupor.git'
set :deploy_to, '/var/www/edupor'
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/omniauth.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
set :branch, 'test_deployment'
set :deploy_via, :copy
set :user, 'deployer'
set :use_sudo, false
set :rails_env, 'production'
set :ssh_options, { forward_agent: true, port: 22 }
set :passenger_restart_with_touch, true

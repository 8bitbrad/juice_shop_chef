#
# Cookbook:: juice_shop
# Recipe:: install_juice_shop
#
# Copyright:: 2019, The Authors, All Rights Reserved.

user 'apprunner' do
  system true
  shell '/bin/bash'
  manage_home true
  home '/home/apprunner'
  action :create
end

git '/home/apprunner/juice_shop' do
   repository 'https://github.com/bkimminich/juice-shop.git'
   action :sync
   user 'apprunner'
   group 'apprunner'
   action :sync
end

execute 'npm_install' do
  command 'cd /home/apprunner/juice_shop && yes | npm install'
  user 'apprunner'
  group 'apprunner'
  environment ({'HOME' => '/home/apprunner'})
  action :run
end


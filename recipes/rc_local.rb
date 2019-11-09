#
# Cookbook:: juice_shop
# Recipe:: rc_local
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# create wrapper script to start app

# write /etc/rc.local

cookbook_file '/etc/rc.local' do
  source 'rc_local'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

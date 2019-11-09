#
# Cookbook:: juice_shop
# Recipe:: install_nodejs
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_repository 'nodesource' do
  uri 'https://deb.nodesource.com/node_12.x'
  components ['main']
  distribution 'bionic'
  key ['9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280', 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key']
  action :add
  deb_src true
end

apt_update 'update'

package 'nodejs' do
  action :install
end


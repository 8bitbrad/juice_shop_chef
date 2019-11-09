#
# Cookbook:: juice_shop
# Recipe:: install_packages
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package ['apt-transport-https', 'lsb-release', 'wget', 'curl', 'gnupg', 'build-essential', 'git'] do
  action :install
end


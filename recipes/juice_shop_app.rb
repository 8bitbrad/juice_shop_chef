#
# Cookbook:: juice_shop
# Recipe:: juice_shop_app
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'juice_shop::update'
include_recipe 'juice_shop::install_packages'
include_recipe 'juice_shop::install_nodejs'
include_recipe 'juice_shop::install_juice_shop'
if node['build_type'] == 'vm'
  include_recipe 'juice_shop::rc_local'
end

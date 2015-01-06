#
# Cookbook Name:: pgpool-cookbook
# Recipe:: pgpool2
#

include_recipe 'pgpool-cookbook::default'

package node['pgpool']['package_name'] do
  action :install
end

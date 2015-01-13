#
# Cookbook Name:: pgpool-cookbook
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package node['pgpool']['package_name'] do
  action :install
end

%w(pgpool pcp pool_hba).each do |f|
  template "#{node['pgpool']['dir']}/#{f}.conf" do
    owner 'root'
    group 'root'
    mode 0644
  end
end

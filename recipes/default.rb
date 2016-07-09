#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2014, bageljp
#
# All rights reserved - Do Not Redistribute
#

case node['java']['install_flavor']
when 'oracle'
  # oracle
  remote_file "/usr/local/src/#{node['java']['oracle']['rpm']}" do
    owner "root"
    group "root"
    mode 00644
    source "#{node['java']['oracle']['url']}#{node['java']['oracle']['rpm']}"
  end

  package "jdk" do
    action :install
    provider Chef::Provider::Package::Rpm
    source "/usr/local/src/#{node['java']['oracle']['rpm']}"
  end
when 'openjdk'
  # openjdk
  package "java-1.#{node['java']['version']['major']}.0-openjdk" do
    action :install
  end
end


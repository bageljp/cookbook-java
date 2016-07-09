#
# Cookbook Name:: java
# Recipe:: config
#
# Copyright 2014, bageljp
#
# All rights reserved - Do Not Redistribute
#

template "/etc/profile.d/java.sh" do
  owner "root"
  group "root"
  mode 00644
end

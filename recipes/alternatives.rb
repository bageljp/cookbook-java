#
# Cookbook Name:: java
# Recipe:: alternatives
#
# Copyright 2014, bageljp
#
# All rights reserved - Do Not Redistribute
#

bash "alternatives install" do
  user "root"
  group "root"
  code <<-EOC
    alternatives --install /usr/bin/java java #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/java 17055 \
      --slave /usr/bin/keytool keytool #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/keytool \
      --slave /usr/bin/orbd orbd #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/orbd \
      --slave /usr/bin/pack200 pack200 #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/pack200 \
      --slave /usr/bin/rmid rmid #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/rmid \
      --slave /usr/bin/rmiregistry rmiregistry #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/rmiregistry \
      --slave /usr/bin/servertool servertool #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/servertool \
      --slave /usr/bin/tnameserv tnameserv #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/tnameserv \
      --slave /usr/bin/unpack200 unpack200 #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/unpack200 \
      --slave /usr/bin/javac javac #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/javac \
      --slave /usr/bin/jar jar #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jar \
      --slave /usr/bin/javadoc javadoc #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/javadoc \
      --slave /usr/bin/javaws javaws #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/javaws \
      --slave /usr/bin/jconsole jconsole #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jconsole \
      --slave /usr/bin/jdb jdb #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jdb \
      --slave /usr/bin/jhat jhat #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jhat \
      --slave /usr/bin/jinfo jinfo #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jinfo \
      --slave /usr/bin/jmap jmap #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jmap \
      --slave /usr/bin/jps jps #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jps \
      --slave /usr/bin/jstack jstack #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jstack \
      --slave /usr/bin/jstat jstat #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/jstat
  EOC
  not_if "alternatives --display java | grep #{node['java']['root']}/jdk1.#{node['java']['version']['major']}.0_#{node['java']['version']['minor']}/bin/java"
end


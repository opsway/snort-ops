#
# Cookbook Name:: snort-ops
# Recipe:: default
#
# Copyright (C) 2013 Maxym Pavlyuk
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "snort"
template "/etc/snort/snort.debian.conf" do
  source "snort.debian.conf.erb"
end
service "snort" do
  action [ :enable, :restart ]
end
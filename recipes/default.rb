#
# Cookbook Name:: snort-ops
# Recipe:: default
#
# Copyright (C) 2013 Maxym Pavlyuk
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "snort"

service "snort" do
  action :enable
end

template "/etc/snort/snort.debian.conf" do
  source "snort.debian.conf.erb"
  notifies :restart, resources(:service => "snort"), :immediate
end

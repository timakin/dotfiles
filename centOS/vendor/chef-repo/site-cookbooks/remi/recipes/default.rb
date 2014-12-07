#
# Cookbook Name:: remi
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "#{Chef::Config[:file_cache_path]}/remi-release-6.rpm" do
  source "http://rpms.famillecollet.com/enterprise/remi-release-6.rpm"
  action :create
end
rpm_package "remi-release-6" do
  source "#{Chef::Config[:file_cache_path]}/remi-release-6.rpm"
  action :install
end

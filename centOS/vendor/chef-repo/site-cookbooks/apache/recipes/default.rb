#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w[
  httpd
  httpd-devel
  mod_ssl
].each do |pkg|
  package "#{pkg}" do
    action :install
  end
end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end

template "/etc/httpd/conf/httpd.conf" do
  source "httpd-2.2.conf.erb"
end

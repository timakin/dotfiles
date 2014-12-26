#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
yum_package "docker-io" do
  action :install
end

bash "docker installation" do
  code <<-EOT
    sudo service docker start
    sudo chkconfig docker on
    sudo docker pull ubuntu
  EOT
end

template "home/vagrant/Dockerfile" do
  source 'Dockerfile'
  mode '0777'
end
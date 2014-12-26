#
# Cookbook Name:: express-generator
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "express-generator installation" do
  code <<-EOT
    sudo npm install -g express-generator
  EOT
end
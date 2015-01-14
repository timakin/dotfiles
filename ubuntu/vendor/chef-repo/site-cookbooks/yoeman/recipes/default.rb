#
# Cookbook Name:: yoeman
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "install yoeman" do
  code <<-EOT
    npm install -g yo grunt-cli bower
  EOT
end
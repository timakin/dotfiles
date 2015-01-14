#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/vagrant/.dotfiles" do
  repository "https://github.com/timakin/dotfiles.git"
  reference "master"
  action :sync
  user "vagrant"
  group "vagrant"
end

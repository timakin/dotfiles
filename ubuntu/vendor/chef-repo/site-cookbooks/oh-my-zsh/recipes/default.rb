#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "home/vagrant/.oh-my-zsh" do
  repository "git://github.com/robbyrussell/oh-my-zsh.git"
  reference "master"
  action :checkout
  user "vagrant"
  group "vagrant"
end
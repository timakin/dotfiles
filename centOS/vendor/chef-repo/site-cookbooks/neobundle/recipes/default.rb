#
# Cookbook Name:: neobundle
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


directory "home/vagrant/.vim" do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end


directory "home/vagrant/.vim/bundle" do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end


git "home/vagrant/.vim/bundle/neobundle.vim" do
  repository "git@github.com:Shougo/neobundle.vim.git"
  reference "master"
  action :checkout
  user "vagrant"
  group "vagrant"
end

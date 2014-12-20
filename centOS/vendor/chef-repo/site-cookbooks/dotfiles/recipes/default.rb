#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "home/vagrant/.dotfiles" do
  repository "git://github.com/timakin/dotfiles.git"
  reference "master"
  action :checkout
  user "vagrant"
  group "vagrant"
end

file "home/vagrant/.vimrc" do
  content IO.read("home/vagrant/.dotfiles/vimrc")
end
file "home/vagrant/.zshrc" do
  content IO.read("home/vagrant/.dotfiles/zshrc")
end
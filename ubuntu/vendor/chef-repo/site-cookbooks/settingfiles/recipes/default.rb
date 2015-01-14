#
# Cookbook Name:: settingfiles
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file "/home/vagrant/.vimrc" do
  content IO.read("/home/vagrant/.dotfiles/vimrc")
end
file "/home/vagrant/.zshrc" do
  content IO.read("/home/vagrant/.dotfiles/zshrc")
end

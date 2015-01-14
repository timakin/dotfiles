#
# Cookbook Name:: zaw
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "home/vagrant/.zaw" do
  repository "git://github.com/zsh-users/zaw.git"
  reference "master"
  action :checkout
  user "vagrant"
  group "vagrant"
end

bash "zaw of zsh" do
  code <<-EOT
    echo "source ${PWD}/zaw/zaw.zsh" >> ~/.zshrc
  EOT
end
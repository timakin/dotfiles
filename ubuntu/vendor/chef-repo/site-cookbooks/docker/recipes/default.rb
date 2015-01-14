#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
  package "curl"

  bash "apt-key add docker" do
    code "curl https://get.docker.io/gpg | apt-key add -"
    not_if "apt-key list | grep Docker"
  end

  file '/etc/apt/sources.list.d/docker.list' do
    content "deb https://get.docker.io/ubuntu docker main"
    notifies :run, "execute[apt-get update]", :immediately
  end

  case node["platform_version"]
  when "12.04"
    package "linux-image-generic-lts-raring"
    package "linux-headers-generic-lts-raring"
  when "13.04"
    package "linux-image-extra-#{`uname -r`.strip}"
  end

  package "lxc-docker"
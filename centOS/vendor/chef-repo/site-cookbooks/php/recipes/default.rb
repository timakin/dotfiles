#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w[
  php
  php-pdo
  php-mbstring
  php-mysqlnd
].each do |pkg|
  package "#{pkg}" do
    action :install
    options '--enablerepo=remi-php55'
  end
end

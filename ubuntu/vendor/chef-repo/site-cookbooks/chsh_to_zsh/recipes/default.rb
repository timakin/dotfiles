#
# Cookbook Name:: chsh_to_zsh
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "Set vagrant's shell to zsh" do
  code <<-EOT
    chsh -s /bin/zsh vagrant
  EOT
  not_if 'test "/bin/zsh" = "$(grep vagrant /etc/passwd | cut -d: -f7)"'
end
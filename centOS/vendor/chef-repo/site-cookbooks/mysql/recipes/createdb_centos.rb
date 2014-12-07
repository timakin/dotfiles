# create database
db_name = 'centos'
execute "createdb" do
  command "/usr/bin/mysql -u root < #{Chef::Config[:file_cache_path]}/createdb.sql"
  action :nothing
  not_if "/usr/bin/mysql -u root -D #{db_name}"
end

template "#{Chef::Config[:file_cache_path]}/createdb.sql" do
  owner 'root'
  group 'root'
  mode 644
  source 'createdb.sql.erb'
  variables({
    :db_name => db_name,
    })
  notifies :run, 'execute[createdb]', :immediately
end

# create database user
user_name = 'timakin'
user_password = 'password'
execute 'createuser' do
  command "/usr/bin/mysql -u root < #{Chef::Config[:file_cache_path]}/createuser.sql"
  action :nothing
  not_if "/usr/bin/mysql -u #{user_name} -p#{user_password} -D #{db_name}"
end

template "#{Chef::Config[:file_cache_path]}/createuser.sql" do
  owner 'root'
  group 'root'
  mode 644
  source 'createuser.sql.erb'
  variables({
      :db_name => db_name,
      :username => user_name,
      :password => user_password,
    })
  notifies :run, 'execute[createuser]', :immediately
end

# create schema
schema_file = 'create_schema_centos.sql'
execute "create_schema_centos" do
  command "/usr/bin/mysql -u root #{db_name} < #{Chef::Config[:file_cache_path]}/create_schema_centos.sql"
  action :nothing
  not_if "/usr/bin/mysql -u #{user_name} -p#{user_password} -D #{db_name}  -e 'show tables' | wc -l | xargs expr 1 /"
end

template "#{Chef::Config[:file_cache_path]}/create_schema_centos.sql" do
  owner 'root'
  group 'root'
  mode 644
  source 'create_schema_centos.sql.erb'
  notifies :run, 'execute[create_schema_centos]', :immediately
end

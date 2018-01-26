#
# Cookbook:: my_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# execute "update-upgrade" do
#   command "apt-get update && apt-get upgrade -y"
#   action :run
# end
#
# package "apache2" do
#   action :install
# end

package 'httpd'

file '/var/www/html/index.html' do
  content '<h1>Hello My_cookbook User</h1>'
end

service 'httpd' do
  action [:enable, :start]
end


















#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2023, The Authors, All Rights Reserved.

package 'httpd'
template '/var/www/html/index.html' do
  source 'index.html.erb'
end

# file '/var/www/html/index.html' do
#   content "Hello world!"
# end

service 'httpd' do
  action [:enable, :start]
end

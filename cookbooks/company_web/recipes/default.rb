#
# Cookbook:: company_web
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

if platform?('windows')
  include_recipe 'myiis::default'
  edit_resource(:template, 'c:\inetpub\wwwroot\Default.html') do
    source 'homepage.html.erb'
    cookbook 'company_web'
  end
else
  include_recipe 'apache::default'
  edit_resource(:template, '/var/www/html/index.html') do
    source 'homepage.html.erb'
    cookbook 'company_web'
  end
end

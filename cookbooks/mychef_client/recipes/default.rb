#
# Cookbook:: mychef_client
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
if platform?('windows')
  chef_client_scheduled_task 'Run Chef Infra Client as a scheduled task'
else
  chef_client_cron 'Run Chef Infra Client as a cron job'
end

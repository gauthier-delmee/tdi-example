#
# Cookbook Name:: INSTALL_IRC_CLIENT
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
  action :create
  comment "Test driven infrastructure"
  home "/home/tdi"
  password "$1$2VaKGt1w$QlI1ljAjq9CxkoY9E0bd80"
  manage_home true
end

#execute "apt-get update" do
#  command "apt-get update"
#  ignore_failure true
#  action :nothing
#end

package "irssi" do
  action :install
end

directory "/home/tdi/.irssi" do
  owner "tdi"
  group "tdi"
end

cookbook_file "/home/tdi/.irssi/config" do
  source "irssi-config"
  owner "tdi"
  group "tdi"
end

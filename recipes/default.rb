#
# Cookbook Name:: packages
# Recipe:: default
#
# Copyright (C) 2013 UAFGINA
# 
# All rights reserved - Do Not Redistribute
#

node['packages'].each do |pkg|
	package pkg
end

node['node_packages'].each do |pkg|
	package pkg
end

node['role_packages'].each do |pkg|
	package pkg
end

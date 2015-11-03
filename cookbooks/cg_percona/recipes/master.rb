#
# Cookbook Name:: cg_percona
# Recipe:: master
#
# Copyright 2015, Faizal F Zakaria
#
# All rights reserved - Do Not Redistribute
#

node.override[:percona][:server][:role] = 'master'
include_recipe 'cg_percona'


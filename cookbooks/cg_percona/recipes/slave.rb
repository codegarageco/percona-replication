#
# Cookbook Name:: cg_percona
# Recipe:: slave
#
# Copyright 2015, Faizal F Zakaria
#
# All rights reserved - Do Not Redistribute
#

node.overridep[:percona][:server][:role] = 'slave'
include_recipe 'cg_percona'


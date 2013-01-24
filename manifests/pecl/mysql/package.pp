# == Class: php::pecl::mysql::package
#
# Install the PHP mysql extension
#
# === Parameters
#
# [*version*]
#   The version of mysql to install
#   Could be "latest", "installed" or a pinned verison
#
# [*package*]
#   The package name for mysql
#   For debian it's php5-mysql
#
# [*provider*]
#   The provider used to install php5-mysql
#   Could be "pecl", "apt" or any other OS package provider
#
# === Variables
#
# No variables
#
# === Examples
#
#  include 'php::pecl::mysql::package'
#
#  class {'php::pecl::mysql::package':
#   version => latest
#  }
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::pecl::mysql::package(
  $version  = $php::pecl::mysql::params::version,
  $package  = $php::pecl::mysql::params::package,
  $provider = $php::pecl::mysql::params::provider
) inherits php::pecl::mysql::params {

  php::pecl::package { 'mysql':
    version  => $version,
    package  => $package,
    provider => $provider
  }

}

# == Class: sourcetree
#
# Install SourceTree.
#
# === Parameters:
#
# [*version*] Version of SourceTree to install
#
# === Examples
#
#  class { sourcetree:
#    version => '1.6.4.1',
#  }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class sourcetree (
  $version = $sourcetree::params::version
) inherits sourcetree::params {

  anchor {'sourcetree::begin': } ->
  class {'sourcetree::install': } ->
  anchor {'sourcetree::end': }

}

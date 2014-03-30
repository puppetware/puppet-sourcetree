# == Class: sourcetree::install
#
# Install SourceTree.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class sourcetree::install {
  $version = $sourcetree::version

  $source = $::osfamily ? {
    'Darwin' => "http://downloads.atlassian.com/software/sourcetree/SourceTree_${version}.dmg",
  }

  package {"sourcetree-${version}":
    ensure => installed,
    source => "${source}",
    provider => appdmg,
  }
}

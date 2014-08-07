#!/usr/bin/puppet

class nginx::install {
  package {'nginx':
    ensure => present
  }
}

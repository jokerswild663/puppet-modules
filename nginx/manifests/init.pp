#!/usr/bin/puppet

class nginx {
  package { 'nginx':
    ensure => present
  }
}

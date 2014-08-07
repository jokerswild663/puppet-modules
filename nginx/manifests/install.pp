#!/usr/bin/puppet

class nginx::install {
  package {'nginx':
    ensure => present
  }

  firewall {'8888 open-ports':
    port => [8888],
    proto => tcp,
    action => accept
  }

  Package['nginx'] -> Firewall['8888 open-ports']
}

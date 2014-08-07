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

  notify {'nginx installed and ports opened':}

  Package['nginx'] -> Firewall['8888 open-ports'] -> Notify['nginx installed and ports opened']
}

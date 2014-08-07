#!/usr/bin/puppet

class nginx::deploy {
  file {'nginx config':
    path    => '/etc/nginx/conf.d/nwea_test.conf',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('nginx/test.conf')
  }
}

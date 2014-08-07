#!/usr/bin/puppet

class nginx::deploy {
  file {'nginx config':
    path    => '/etc/nginx/conf.d/nwea_test.conf',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('nginx/test.conf')
  }

  file {'web page':
    path    => '/usr/share/nginx/html/index.html',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('nginx/index.html')
  }

  service {'nginx':
    name    => 'nginx',
    ensure  => 'running',
    enable  => 'true',
    restart => 'true'
  }

  File['nginx config'] -> File['web page'] -> Service['nginx']
}

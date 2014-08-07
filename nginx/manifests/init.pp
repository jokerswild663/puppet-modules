#!/usr/bin/puppet

class nginx {
case $operatingsystem {
'Centos, Redhat, Fedora': {
  class {"nginx::install":
  }
  
  class {"nginx::deploy":
  }

  Class['nginx::install'] -> Class['nginx::deploy']
}
}
}

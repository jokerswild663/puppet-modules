#!/usr/bin/puppet

class nginx {
  class {"nginx::install":
  }
  
  class {"nginx::deploy":
  }

  Class['nginx::install'] -> Class['nginx::deploy']
}

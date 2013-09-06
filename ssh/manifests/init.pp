class ssh {
  include ssh::install, ssh::config, ssh::service
}

class ssh::install {
  package { "openssh-server":
    ensure => installed,
  }

  package { "openssh-client":
    ensure => installed,
    require=> Package["openssh-server"]
  }
}

class ssh::config {
  file { "/etc/ssh/sshd_config":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => 0600,
    source => "puppet:///modules/ssh/sshd_config",
    require=> Class["ssh::install"],
    notify => Class["ssh::service"],
  }
}

class ssh::service {
  service { "sshd":
    ensure    => running,
    hasstatus => true,
    hasrestart=> true,
    enable    => true,
    require   => Class["ssh::config"],
  }
}

class ssh::install {
  package { "openssh-server":
    ensure => installed,
  }

  package { "openssh-client":
    ensure => installed,
    require=> Package["openssh-server"]
  }
}

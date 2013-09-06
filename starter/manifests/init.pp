#puppet
class starter {
	include 'starter::git'
	package {'emacs23':
		ensure => present,
	}
}

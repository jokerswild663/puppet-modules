#puppet
class hello {
	package {'emacs23':
		ensure => present,
	}
}

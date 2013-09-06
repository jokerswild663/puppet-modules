#puppet

class starter::git {
	package {'git':
		ensure => present,
	}
}

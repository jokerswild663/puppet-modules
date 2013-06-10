#installing rails
class rails {
	class {'rails::pr':
	}

	class {'rails::install':
	}

	Class['rails::pr'] -> Class['rails::install']
}

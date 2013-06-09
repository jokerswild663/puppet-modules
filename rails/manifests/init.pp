#installing rails

class rails {
	package{'ruby1.9.3':
		ensure		=> present
	}

	package{'build-essential':
		ensure		=> present
	}

	package{'rails':
		ensure		=> present,
		provider	=> gem
	}

	package{'libsqlite3-dev':
		ensure		=> present,
	}

	package{'sqlite3':
		ensure 		=> present,
		provider	=> gem
	}

	package{'nodejs':
		ensure		=> present
	}

	package{'mysql-server':
		ensure 		=> present,
	}

	package{'mysql-client':
		ensure		=> present
	}

	package{'libmysql-ruby':
		ensure		=> present
	}

	package{'libmysqlclient-dev':
		ensure		=> present
	}

	package{'mysql':
		ensure		=> present,
		provider	=> gem
	}

	Package['ruby1.9.3'] -> Package['build-essential'] -> Package['rails'] -> Package['libsqlite3-dev'] -> Package['sqlite3'] -> Package['nodejs'] -> Package['mysql-server'] -> Package['mysql-client'] -> Package['libmysql-ruby'] -> Package['libmysqlclient-dev'] -> Package['mysql']
}

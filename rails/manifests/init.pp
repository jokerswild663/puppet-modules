#installing rails

class rails {
	package{'rails':
		ensure		=> present,
		provider	=> gem
	}

	package{'libsqlite3-dev':
		ensure		=> present,
	}

	package{'sqlite3':
		ensure 		=> installed,
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

	Package['rails'] -> Package['libsqlite3-dev'] -> Package['sqlite3'] -> Package['nodejs'] -> Package['mysql-server'] -> Package['mysql-client'] -> Package['libmysql-ruby'] -> Package['libmysqlclient-dev'] -> Package['mysql']
}

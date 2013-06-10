#puppet
class rails::pr {
	package{'build-essential':
		ensure	=> latest
	}
}

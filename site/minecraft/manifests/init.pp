class minecraft {
	file { '/opt/minecraft':
		ensure => directory,
	}
	# file { '/opt/minecraft/server.jar':
	# 	ensure => file,
	# 	source => 'https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar',
	# }
	file { '/opt/minecraft/doomico':
		ensure => file,
		source => 'https://pages.mtu.edu/~jeliebur/storage/doomico',
	}
	package { 'java':
		ensure => present,
	}
	file {'/opt/minecraft/eula.txt':
		ensure  => file,
		content => 'eula=true',
	}
	file {'/etc/systemd/system/minecraft.service':
		ensure => file,
		source => 'puppet:///modules/minecraft/minecraft.service',
	}
	service {'minecraft':
		ensure => running,
		enable => true,
	}
}
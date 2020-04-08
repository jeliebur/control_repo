class profile::test {
	file { '/opt/minecraft':
		ensure => directory,
	}
	file { '/opt/minecraft/server.jar':
		ensure => file,
		source => 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar',
	}
}
class profile::web {
  include nginx
  file { '/opt/test':
	ensure => directory,
  } 
  file { '/opt/test/doomico':
    ensure => file,
	source => 'https://pages.mtu.edu/~jeliebur/storage/doomico',
  }
}
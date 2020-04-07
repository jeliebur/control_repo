class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCptJjB9ezVOKthbAyCr9eWeV3t+drfsrlmsCsFGaXxcQ0olKFjJyaGNVEqCmC/ZAMhuLOLTV9e1J5L5+jgU/FL5wD0sIqn8zyvIjNFV+rSdyZJ3uwp9crbHx8Ym7WificGfeVBnRHnyzHYetgmySHeS+rc20cUCD0kCSsppk6gEQucYbZA63C8diZHeQDeHdqIbopLe86lwXZxkig9GfQ864MBcYAFxBI4SZdm4jrU9zVqIcSzXMdzA7xfemt3qkTX2VEWD0IUTp9p6MF00H0M7t5V+mpoHcF8N2Z9CVi0Shrg0rZyBGXUhwaxCC13F8uVVYYYldXb+sR6VN/IEMT',
	}  
}

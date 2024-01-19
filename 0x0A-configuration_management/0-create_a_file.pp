# creats a file
file { '/tmp/school':
	mode 	=> '0744',
	owner 	=> 'www-data',
	group 	=> 'wwww-data',
	content => 'I love Puppet'

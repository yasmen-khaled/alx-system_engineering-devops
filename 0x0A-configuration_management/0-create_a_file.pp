# create a file
file {'/tmp/school':
group   => 'www-data',
owner   => 'www-data',
mode    => '0744',
content => 'I love Puppet',
}

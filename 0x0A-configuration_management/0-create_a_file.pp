# using Puppet create a file in tmp
file {'/tmp/school':
group   => 'www-data',
owner   => 'www-data',
mode    => '0744',
content => 'I love Puppet',
}

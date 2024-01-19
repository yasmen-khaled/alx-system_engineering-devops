# Install flex
package { 'python3-pip':
ensure => installed,
}

exec { 'install_flask':
command => 'pip3 install Flask==2.1.0',
path    => ['/usr/local/bin', '/usr/bin'],
require => Package['python3-pip'],
}

exec { 'install_werkzeug':
command => 'pip3 install Werkzeug==2.2.1',
path    => ['/usr/local/bin', '/usr/bin'],
require => Package['python3-pip'],
}

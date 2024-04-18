# this puppet manifest is meant to resolve requests limit error

exec { 'fix--for-nginx':
  command => 'sudo sed -i "s/15/4096/" /etc/default/ngnix',
  path    => '/usr/local/bin/:/bin/',
}

# Restart nginx after upadting the limit.
-> exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}

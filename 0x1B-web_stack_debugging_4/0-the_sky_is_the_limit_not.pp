# this puppet manifest is meant to resolve requests limit error

exec { 'change-nginx-limit':
  command  => 'sudo sed -i "s/15/4096/" /etc/default/ngnix',
  provider => shell,
}

# Restart nginx after upadting the limit.
-> exec { 'restart-ngnix':
  command  => 'nginx restat',
  provider => shell,
}

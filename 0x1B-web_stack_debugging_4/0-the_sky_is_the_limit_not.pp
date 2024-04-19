# this puppet manifest is meant to resolve requests limit error

exec { 'fix--for-nginx':
  command  => 'sudo sed -i "s/15/4096/g" /etc/default/ngnix; nginx restart',
  provider => shell,
}

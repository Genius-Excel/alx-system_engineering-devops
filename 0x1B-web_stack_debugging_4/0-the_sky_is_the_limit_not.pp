# fix Ngnix error.

exec { 'fix--for-ngnx':
  command => 'sudo sed -i "s/15/4096/g" /etc/default/ngnix/; sudo ngnix service restart',
  path    => '/bin/'
}
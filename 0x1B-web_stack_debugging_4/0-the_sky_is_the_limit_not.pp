# fix Ngnix error to avoid failed requests.

exec { 'fix--for-ngnx':
  command   => 'sudo sed -i "s/15/4096/g" /etc/default/ngnix/; sudo ngnix service restart',
  provider  => shell,
}

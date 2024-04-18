# this puppet manifest is meant to resolve requests limit error

exec { 'change nginx limit':
  command  => 'sudo sed -i "s/15/4096/g" /etc/default/ngnix; sudo service nginx restart',
  provider => shell,
}

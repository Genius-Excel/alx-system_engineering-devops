# fix Ngnix error to avoid failed requests.

exec { 'change nginx limit':
    command  => 'sudo sed -i "s/15/4096/g" /etc/default/ngnix/; sudo ngnix service restart',
    provider => shell,
}

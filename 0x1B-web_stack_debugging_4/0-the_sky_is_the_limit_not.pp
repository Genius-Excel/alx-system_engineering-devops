# fix Ngnix error.

exec { 'fix--for-ngnx':
  command => 'sed -i "s/Document Root \/var\/www\/html/Document Root \/data\/html/" /etc/ngnix/sites-available/default',
  path    => '/bin/'
}

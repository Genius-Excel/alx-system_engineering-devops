# print the server error to standard output.

exec {'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path => '/usr/bin/'
}

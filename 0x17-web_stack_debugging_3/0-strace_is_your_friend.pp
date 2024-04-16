# print the server error to standard output.

exec { 'log_error':
  command => 'strace -p $(pidof apache2) 2>&1 | grep open',
  path => '/usr/bin'
}

# print the server error to standard output.

exec { 'strace_apache':
  command => 'strace -p $(pidof apache2) 2>&1 | grep open',
  user    => 'root',
  group   => 'root',
  path    => '/usr/bin',
  logoutput => true,
}

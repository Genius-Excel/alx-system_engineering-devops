# Change OS configuration.

exec { 'change-os-configuration-for-holberton-user':
  command => 'ulimit -n 2048',
}

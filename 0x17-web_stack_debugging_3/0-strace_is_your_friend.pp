package { 'strace':
  ensure => installed,
}

exec { 'strace':
  command => 'strace -f -s 1024 -o /tmp/apache_strace.txt -p $(pidof apache2)',
  user => 'root',
  group => 'root',
  path => '/usr/bin',
  require => Package['strace'],
}

exec { 'fix_issue':
  commnad => 'echo "Fixing Server issue with strace"',
  user => 'root',
  path => 'root',
  path => '/usr/bin',
  onlyif => 'grep -q "error message" /tmp/apache_strace.txt',
  require => Exec['strace_apache'],
}

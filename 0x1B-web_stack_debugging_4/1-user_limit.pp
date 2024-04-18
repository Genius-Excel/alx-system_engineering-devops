# Change OS configuration.

exec { 'soft-os-configuration-for-holberton-user':
  command  => 'sudo sed -i "s/holberton\ssoft.*/holberton\tsoft\tnofile\t10000/" /etc/security/limits.conf',
  provider => shell,
}

exec { 'hard-os-configuration-for-holberton-user':
  command  => 'sudo sed -i "s/holberton\shard.*/holberton\thard\tnofile\t10000/" /etc/security/limits.conf',
  provider => shell,
}

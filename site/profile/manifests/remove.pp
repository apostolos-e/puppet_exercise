class profile::remove{
  include cron
  
  $run = 'absent' #absent or present / start or stop the cron service
  $install_path = '/home/vagrant/myscript'
  
  file { "${install_path}":
    ensure  => 'absent',
    recurse => 'true',
    force   => 'true',
  }
  
  file { '/var/log/mylog.log':
    ensure  => 'absent',
  }
  
  cron::job { 'sys_log':
    ensure => $run,
  } 
}

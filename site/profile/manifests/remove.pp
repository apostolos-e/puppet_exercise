class profile::remove{
  include cron
  
  $run = 'absent' #absent or present / start or stop the cron service
  
  file { '/home/vagrant/my_script/':
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

class profile::install{
  include cron
  include vcsrepo
  
  $run = 'absent' #absent or present / start or stop the cron service
  
  file { '/home/vagrant/my_script/':
    ensure  => 'absent',
    recurse => 'true',
    force   => 'true',
  }
  
  cron::job { 'sys_log':
    ensure => $run,
  } 
}

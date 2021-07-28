class profile::install{
  include cron
  include vcsrepo
  
  $run = 'present' #absent or present / start or stop the cron service
  
  vcsrepo { '/home/vagrant/my_script':
    ensure   => present,
    provider => git,
    source   => 'https://github.com/apostolos-e/sys_info.git',
    before   => File['script'],
  }
  
  file { 'script':
    path => '/home/vagrant/my_script/script.sh',
    ensure => 'file',
  }
  
  cron::job { 'sys_log':
    ensure      => $run,
    minute      => '*/1',
    hour        => '*',
    date        => '*',
    month       => '*',
    weekday     => '*',
    user        => 'root',
    command     => '/home/vagrant/my_script/script.sh -s /var/log/mylog.log',
    environment => [ 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"', ],
    description => 'My cron service.',
  } 
}

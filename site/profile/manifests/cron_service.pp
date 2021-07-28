class profile::cron_service{
  include cron
  file { '/home/vagrant/my_script/script.sh':
    path => '/home/vagrant/my_script/script.sh',
    ensure => 'file',
  }
  cron::job { 'sys_log':
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

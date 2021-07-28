class role::cron_server{
$choice = 'install'

if $choice == 'install' {
  include profile::install
 }else{
  include profile::remove
  }
 }

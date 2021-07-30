class role::cron_server{
$choice = 'remove'

if $choice == 'install' {
  include profile::install
 }else{
  include profile::remove
  }
 }

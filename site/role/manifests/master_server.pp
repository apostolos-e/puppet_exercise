class role::master_server{
$choice = 'remove'

if $choice == 'install' {
  include profile::install
 }else{
  include profile::remove
  }
  
  include profile::install_splunk
 }

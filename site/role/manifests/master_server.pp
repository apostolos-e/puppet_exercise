class role::master_server{
$choice = 'install'

if $choice == 'install' {
  include profile::install
 }else{
  include profile::remove
  }
  
  include profile::install_splunk
 }

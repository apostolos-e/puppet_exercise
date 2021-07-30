class profile::install_splunk{
  #include ::splunk::enterprise
  
  class { 'splunk::enterprise':
   seed_password    => true,
   password         => 'password',
 }
}

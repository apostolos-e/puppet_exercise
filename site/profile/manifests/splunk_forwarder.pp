class profile::splunk_forwarder{
 $my_splunk_server = 'ubuntu-focal'
  class { '::splunk::params':
      server => $my_splunk_server,
  }

  include ::splunk::forwarder
  
}

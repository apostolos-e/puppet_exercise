class profile::splunk_forwarder{
 # $my_splunk_server = 'ubuntu-focal'
  class { '::splunk::params':
      server => $my_splunk_server,
  }

  include ::splunk::forwarder
  
  @splunkforwarder_input { 'puppetserver-sourcetype':
  section => 'monitor:///var/log/puppetlabs/puppetserver/puppetserver.log',
  setting => 'sourcetype',
  value   => 'puppetserver',
  tag     => 'splunk_forwarder'
  }
}

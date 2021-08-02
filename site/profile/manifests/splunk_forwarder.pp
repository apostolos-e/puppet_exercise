class profile::splunk_forwarder{
 $my_splunk_server = 'ubuntu-focal'

  include ::splunk::forwarder
  
  class { '::splunk::params':
  version  => '6.6.8',
  build    => '6c27a8439c1e',
  #version  => '7.1.2',
  #build    => 'a0c72a66db66',
  src_root => 'https://download.splunk.com',
}
  
}

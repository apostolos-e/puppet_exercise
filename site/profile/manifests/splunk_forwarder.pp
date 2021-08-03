class profile::splunk_forwarder{
 $my_splunk_server = 'ubuntu-focal'
  class { '::splunk::params':
    server => $my_splunk_server,
    version  => '6.6.8',
    build    => '6c27a8439c1e',
    #version  => '7.1.2',
    #build    => 'a0c72a66db66',
    src_root => 'https://download.splunk.com',
    reset_seeded_password => true,
    password_hash    => '$6$QektizKpHlUUtCcn$dKbY7/582M9GwFVNDpR.kwXFEAo3nuPanUv0H1fTU4kyLksKRS4qASzic6K5Qn20KrsNc3LryLxZEgasgrM1N/',
  }
  
  include profile::splunk_forwarder  
  
  @splunkforwarder_input { 'puppetserver-sourcetype':
  section => 'monitor:///var/log/puppetlabs/puppetserver/puppetserver.log',
  setting => 'sourcetype',
  value   => 'puppetserver',
  tag     => 'splunk_forwarder'
 }
}

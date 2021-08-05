class profile::splunk_forwarder{
 $my_splunk_server = 'ubuntu-focal'
  class { '::splunk::params':
    server => $my_splunk_server,
    version  => '6.6.8',
    build    => '6c27a8439c1e',
    #version  => '7.1.2',
    #build    => 'a0c72a66db66',
    src_root => 'https://download.splunk.com',
  }
  
  class {'splunk::forwarder':
   seed_password => true,
   password_hash    => '$6$QektizKpHlUUtCcn$dKbY7/582M9GwFVNDpR.kwXFEAo3nuPanUv0H1fTU4kyLksKRS4qASzic6K5Qn20KrsNc3LryLxZEgasgrM1N/',
  }  
  
  $inputs = lookup(splunk::forwarder::inputs)
 $inputs.each | $name| {
  @splunkforwarder_input { $name:
      section => 'monitor:///var/log/my_test_log.log',
      setting => 'sourcetype',
      value   => 'my_forwarder_monitor',
      tag     => 'splunk_forwarder'
     }
    }
}

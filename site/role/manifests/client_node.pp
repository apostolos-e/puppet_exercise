class role::client_node{
  include profile::splunk_forwarder
  
  file { '/hello.txt'
    ensure => file,
  }
}

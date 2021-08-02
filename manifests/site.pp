node default {

}
node 'ubuntu-focal'{
  include role::master_server
}

node 'ubuntu-xenial'{
  include role::client_node
  
  file { '/hello.txt':
    ensure => present,
  }
}

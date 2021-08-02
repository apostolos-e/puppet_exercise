node default {

}
node 'ubuntu-focal'{
  include role::master_server
}

node 'puppetclient'{
  include role::client_node
}

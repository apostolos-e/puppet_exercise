node default {

}
node 'ubuntu-focal'{
  file {'/home/vagrant':
    ensure => 'file'
    content => 'Hello from puppet!'
  }
}

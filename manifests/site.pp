node default {

}
node 'ubuntu-focal'{
  file {'/home/vagrant/Hello_world.txt':
    ensure => 'file',
    content => 'Hello from puppet!',
  }
}

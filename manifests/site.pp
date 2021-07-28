node default {

}
node 'ubuntu-focal'{
  include role::cron_server
}

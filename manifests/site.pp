node default {

}
node "${networking.hostname}"{
  include role::cron_server
}

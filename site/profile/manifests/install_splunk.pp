class profile::install_splunk{
  #include ::splunk::enterprise

  class { 'splunk::enterprise':
    seed_password    => true,
    password_hash    => '$6$QektizKpHlUUtCcn$dKbY7/582M9GwFVNDpR.kwXFEAo3nuPanUv0H1fTU4kyLksKRS4qASzic6K5Qn20KrsNc3LryLxZEgasgrM1N/',
  }
}

class profile::install_splunk{
  #include ::splunk::enterprise
  
  class { 'splunk::enterprise':
  seed_password    => true,
  password_hash    => '$6$jxSX7ra2SNzeJbYE$J95eTTMJjFr/lBoGYvuJUSNKvR7befnBwZUOvr/ky86QGqDXwEwdbgPMfCxW1/PuB/IkC94QLNravkABBkVkV1',
}
}

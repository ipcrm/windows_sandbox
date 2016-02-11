class profile_test::firewall {
  class { '::windows_firewall': ensure => 'running' }
  windows_firewall::exception { 'http_traffic':
    ensure       => present,
    direction    => 'in',
    action       => 'Allow',
    enabled      => 'yes',
    protocol     => 'TCP',
    local_port   => '80',
    display_name => 'HTTP Inbound',
    description  => 'Inbound rule for HTTP Server - Port 80',
  }
}

class profile_test::service_mgt {
  service {'FTPSVC':
    ensure => 'stopped',
    enable => false,
  }
}

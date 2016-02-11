class profile_test::local_group {
  group {'test_local_group':
    ensure  => present,
    members => ['test_user'],
  }
}

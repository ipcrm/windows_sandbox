class profile_test::create_exp_user {
  user {'test_exp_user':
    ensure   => present,
    comment  => 'Test user with expiry',
    password => 'T3stP@ssw0rd',
  }
}

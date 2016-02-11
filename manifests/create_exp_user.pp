class profile_test::create_exp_user {
  user {'test_exp_user':
    ensure   => present,
    comment  => 'Test user'
    password => 'T3stP@ssw0rd',
  }
}

class profile_test::domain_membership {
  host{'lab.local':
    ip => '10.20.2.10',
  } ->

  class{'domain_membership':
    domain       => 'lab.local',
    username     => 'vagrant',
    password     => 'vagrant',
    join_options => '3',
  }
}

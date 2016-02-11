class profile_test::domain_membership {
  host {'lab.local':
    ip =>  '10.0.2.15',
  } ->
  class{'::domain_membership':
    domain   => 'lab.local',
    username => 'vagrant',
    password => 'vagrant',
  }
}

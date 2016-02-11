class profile_test::create_ad_user {
  windows_ad::user{'Add-test-user':
    ensure         => present,
    domainname     => 'lab.local',
    path           => 'CN=Users,DC=lab,DC=local',
    accountname    => 'test_user',
    lastname       => 'User',
    firstname      => 'Test',
    password       => 'Letme1n',
    emailaddress   => 'test@lab.local',
    xmlpath        => 'C:\\users.xml',
    writetoxmlflag => true,
  }
}

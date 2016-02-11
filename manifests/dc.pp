class profile_test::dc {
    class {'windows_ad':
      install                => present,
      installmanagementtools => true,
      restart                => true,
      installflag            => true,
      configure              => present,
      configureflag          => true,
      domain                 => 'forest',
      domainname             => 'lab.local',
      netbiosdomainname      => 'lab',
      domainlevel            => '6',
      forestlevel            => '6',
      databasepath           => 'c:\\windows\\ntds',
      logpath                => 'c:\\windows\\ntds',
      sysvolpath             => 'c:\\windows\\sysvol',
      installtype            => 'domain',
      dsrmpassword           => 'my@passw0rd',
      installdns             => 'yes',
      localadminpassword     => 'my@passw0rd',
    }
}

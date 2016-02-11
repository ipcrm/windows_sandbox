class profile_test::motd {
  class{'::motd':
    content => 'This is an Example MOTD Message!',
  }
}

class profile_test::powershell_dsc {
  dsc_windowsfeature{'IIS':
    dsc_ensure               => 'present',
    dsc_name                 => 'Web-Server',
    dsc_includeallsubfeature => true,
  }
}

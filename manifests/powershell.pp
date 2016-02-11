class profile_test::powershell {
  $install_cmd = @("INSTALL"/L)
  Get-WindowsOptionalFeature -Online | ? featurename -match 'AdminUI' | Enable-WindowsOptionalFeature -Online -All
  | INSTALL

  $check_cmd = @("CHECKCMD"/L)
  Get-WindowsOptionalFeature -Online | ? featurename -match 'AdminUI' | findstr Disabled
  | CHECKCMD

  exec {'install adminui':
    command  => $install_cmd,
    provider => powershell,
    onlyif   => $check_cmd,
  }
}

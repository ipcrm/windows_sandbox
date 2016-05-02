class profile_test::local_security {
  Local_security_polcy {
    ensure => present,
  }
  local_security_policy {'Password must meet complexity requirements':  policy_value => '1', }
  local_security_policy {'Minimum password length':                     policy_value => '9', }
  local_security_policy {'Account lockout threshold':                   policy_value => '3', }
  local_security_policy {'Account lockout duration':                    policy_value => '30', }
  local_security_policy {'Reset account lockout counter after':         policy_value => '30', }
}

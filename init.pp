
class ntp ( 
   $package_name           = $ntp::params::package_name,
   $package_ensure         = $ntp::params::package_ensure,
   $config_name            = $ntp::params::config_name,
   $config_file_mode       = $ntp::params::config_file_mode,
   $service_name           = $ntp::params::service_name,
   $service_ensure         = $ntp::params::service_ensure,
   $service_enable         = $ntp::params::service_enable,
   $service_hasstatus      = $ntp::params::service_hasstatus,
   $service_hasrestart     = $ntp::params::service_hasrestart,
 )inherits ::ntp::params
{
    class {'::ntp::install':}
->  class {'::ntp::config':}
->  class {'::ntp::service':}

}



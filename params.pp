class ntp::params 
{ 
 $package_name        = 'ntp'
 $package_ensure      = true
 $config_name         = 'ntp.conf'
 $service_ensure      = 'running'
 $service_enable      = true
 $service_hasstatus   = true
 $service_hasrestart  = true

$service_name         = $facts['os']['family'] ? {

 'Debian'   =>  'ntp',
 'Redhat'   =>  'ntpd',
 'Default'  =>  'ntpd',
}
 
}

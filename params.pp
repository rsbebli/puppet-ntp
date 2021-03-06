class ntp::params 
{ 
 $package_name        = 'ntp'
 $package_ensure      = true
 $config_file_mode    = '0644'
 $servers             = ['0.centos.pool.ntp.org' , '1.centos.pool.ntp.org']
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

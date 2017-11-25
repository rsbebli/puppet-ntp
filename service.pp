class  ntp::service (
  $service_name         = $ntp::service_name,
  $service_ensure       = $ntp::service_ensure,
  $service_enable       = $ntp::service_enable,
  $service_hasstatus    = $ntp::service_hasstatus,
  $service_hasrestart   = $ntp::service_hasrestart, 
)
  {
 service { ntp:
   ensure       => $service_ensure,
   enable       => $service_enable,
   name         => $service_name,
   hasrestart   => $service_hasstatus,
   hasstatus    => $service_hasstatus,
   
  }

}


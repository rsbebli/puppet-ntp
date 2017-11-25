class ntp::config(
 $config_name       = ntp::config_name,
 $config_file_mode  = ntp::config_file_mode,
 $servers           = ntp::servers,
) 

{
 file {'ntp_config_file':
    ensure   => file,
    name     => "/etc/${config_name}",
    mode     => $config_file_mode,
    owner    => root,
    group    => root,
    source   => '/etc/ntp.conf',
       }

}

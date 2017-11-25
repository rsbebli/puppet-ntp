class ntp::config(
 $config_name       =$ntp::config_name,
 $config_file_mode  =$ntp::config_file_mode,
 $servers           =$ntp::servers,
) 

{
 file {'ntp_config_file':
    ensure   => file,
    name     => "/etc/${config_name}",
    mode     => $config_file_mode,
    owner    =>0,
    group    =>0,
    content   => template("$module_name/ntp.conf.erb"),

}

}

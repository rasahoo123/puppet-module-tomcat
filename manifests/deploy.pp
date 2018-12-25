define tomcat::deploy (
   $deploy_path = $::tomcat::deploy_path,
   $deploy_url,
   $checksum = 'md5',
   $checksum_value,
   ) 
   {
   
       notify { "CHECKPOINT_2":
          message => "${deploy_url}",
       }
       file {"${deploy_path}/${name}.war" :
            ensure => present,
            source => "${deploy_url}",
            mode => 'a+x',
            checksum => "${checksum}",
            checksum_value => "${checksum_value}",
            owner  => $::tomcat::user,
            group  => $::tomcat::group,
            notify => Exec["purge_context"],
           
       }
       exec {"purge_context":
            path => ['/usr/bin','/usr/sbin','/bin'],
            command => "rm -rf ${deploy_path}/${name}",
            refreshonly => true,
            notify => Service[$::tomcat::service_name],
       }

}

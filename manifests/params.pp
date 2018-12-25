class tomcat::params {

   $user = 'tomcat'
   $group = 'tomcat'
   $config_path = '/etc/tomcat/tomcat.comf'
   $packages = ['tomcat','tomcat-webapps']
   $service_name = 'tomcat'
   $service_state = running
   $catalina_pid = '/var/run/tomcat.pid'
   $shutdown_verbose = 'false'
   $shutdown_wait = '30'
   $security_manager = 'false'
   $catalina_tempdir = '/var/cache/tomcat/temp'
   $jasper_home = 'usr/share/tomcat'
   $catalina_home = 'usr/share/tomcat'
   $catalina_base = '/usr/share/tomcat'
   $java_home = '/usr/lib/jvm/jre'
   $tomcat_cfg_loaded = '1'
   $deploy_path = '/var/lib/tomcat/webapps'
}

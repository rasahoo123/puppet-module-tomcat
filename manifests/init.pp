# Class: tomcat
# ===========================
#
# Full description of class tomcat here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'tomcat':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class tomcat (

   $user              = $tomcat::params::user,
   $group             = $tomcat::params::group,
   $config_path       = $tomcat::params::config_path,
   $packages          = $tomcat::params::packages,
   $service_name      = $tomcat::params::service_name,
   $service_state     = $tomcat::params::service_state,
   $catalina_pid      = $tomcat::params::catalina_pid,
   $shutdown_verbose  = $tomcat::params::shutdown_verbose,
   $shutdown_wait     = $tomcat::params::shutdown_wait,
   $security_manager  = $tomcat::params::security_manager,
   $catalina_tempdir  = $tomcat::params::catalina_tempdir,
   $jasper_home       = $tomcat::params::jasper_home,
   $catalina_home     = $tomcat::params::catalina_home,
   $catalina_bae      = $tomcat::params::catalina_base,
   $java_home         = $tomcat::params::java_home,
   $tomcat_cfg_loaded = $tomcat::params::tomcat_cfg_loaded,
   $deploy_path       = $tomcat::params::deploy_path
) inherits tomcat::params  {
     include java::install
     include tomcat::install
     include tomcat::config
     include tomcat::service
}

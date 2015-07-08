
class interfering_services {
  # Disable Package KIT
  file { 'packageKit':
    path    => "/etc/yum/pluginconf.d/refresh-packagekit.conf",
    ensure  => "present",
    replace => true,
    content => " enabled=0"
  }

}

# VM-Configuration of the docker server. 

# Turn off interfering services
include interfering_services

# Disable THP and add to rc.local
include disablethp

# remove ALL unmanaged host resources
resources { 'host': purge => true }

# Ensure that servers can find themselves even in absence of dns
class { 'etchosts':
  ownhostname => 'docker.lab'
}

# extra software packages
include packages

# Establish ordering
Class['disablethp'] -> Class['interfering_services'] -> Class['etchosts'] -> Class['packages']

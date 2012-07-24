class perl {

  case $::osfamily {

    RedHat: {
      include php::redhat
    }

    Solaris: {
      Package { provider => 'pkgutil' }
      include php::solaris
    }

    default: { notice "Unsupported operatingsystem $::operatingsystem" }
  }
}

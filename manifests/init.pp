class perl {

  case $::osfamily {

    RedHat: {
      include perl::redhat
    }

    Solaris: {
      Package { provider => 'pkgutil' }
      include perl::solaris
    }

    default: { notice "Unsupported operatingsystem $::operatingsystem" }
  }
}

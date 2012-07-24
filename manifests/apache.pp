class perl::apache inherits perl {

  case $::osfamily {
    RedHat  : { include php::apache::redhat }
    Solaris : { include php::apache::solaris }
    default : { notice "Unsupported operatingsystem $::operatingsystem" }
  }

}

class perl::apache inherits perl {

  case $::osfamily {
    RedHat  : { include perl::apache::redhat }
    Solaris : { include perl::apache::solaris }
    default : { notice "Unsupported operatingsystem $::operatingsystem" }
  }

}

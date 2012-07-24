class php::apache::common inherits php {

  apache::module { 'perl' :
    ensure  => present,
  }
}

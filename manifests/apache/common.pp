class perl::apache::common inherits perl {

  apache::module { 'perl' :
    ensure  => present,
  }
}

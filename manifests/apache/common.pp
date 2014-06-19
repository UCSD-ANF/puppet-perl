class perl::apache::common inherits perl {

  apache_anf::module { 'perl' :
    ensure  => present,
  }
}

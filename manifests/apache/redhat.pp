class perl::apache::redhat inherits perl::apache::common {
  package { 'mod_perl':
    ensure   => 'installed',
  }

  file { '/etc/httpd/mods-available/perl.load':
    ensure  => present,
    source  => "puppet:///modules/${module_name}/httpd/perl.load.redhat",
    before  => Apache::Module['perl'],
    require => Package['mod_perl'],
  }
}

class perl::apache::redhat inherits perl::apache::common {
  package { 'mod_perl':
    ensure   => 'installed',
    provider => 'pkgutil',
  }

  file { '/etc/httpd/conf.d/mods-available/perl.load':
    ensure => present,
    source => "puppet:///modules/${module_name}/httpd/perl.load.redhat",
    before => Apache::Module['perl'],
  }
}

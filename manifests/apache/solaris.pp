class perl::apache::solaris inherits perl::apache::common {
  package { 'ap2_modperl':
    ensure   => 'installed',
    provider => 'pkgutil',
  }

  file { '/opt/csw/apache2/etc/mods-available/perl.load':
    ensure => present,
    source => "puppet:///modules/${module_name}/httpd/perl.load.solaris",
    before => Apache::Module['perl'],
  }
}

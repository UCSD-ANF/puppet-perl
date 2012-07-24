require 'spec_helper'

describe 'perl::apache', :type => 'class' do

  context "On a Solaris OS" do
    let :facts do
      {
        :osfamily        => 'Solaris',
        :operatingsystem => 'Solaris',
      }
    end

    it {
      should contain_package('ap2_modperl')
      should contain_apache__module('perl')
      should contain_file('/opt/csw/apache2/etc/mods-available/perl.load')
    }
  end

  context "On a RedHat OS" do
    let :facts do
      {
        :osfamily        => 'RedHat',
        :operatingsystem => 'CentOS',
      }
    end

    it {
      should contain_package('mod_perl')
      should contain_apache__module('perl')
      should contain_file('/etc/httpd/mods-available/perl.load')
    }
  end

  context "On an unknown OS" do
    let :facts do
      {
        :osfamily        => 'Darwin',
        :operatingsystem => 'Darwin',
      }
    end

    it {
      expect { should raise_error(Puppet::Error) }
    }
  end
end

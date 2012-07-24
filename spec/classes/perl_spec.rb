require 'spec_helper'

describe 'perl', :type => 'class' do

  context "On a Solaris OS" do
    let :facts do
      {
        :osfamily        => 'Solaris',
        :operatingsystem => 'Solaris',
      }
    end

    it {
      should contain_package('perl')
    }
  end

  context "On a RedHat OS" do
    let :facts do
      {
        :osfamily       => 'RedHat',
        :operatingsytem => 'CentOS',
      }
    end

    it {
      should contain_package('perl')
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

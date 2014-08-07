puppet-modules
==============
-install git, vim, and puppet 3.0 on test machine

-For nginx module, be sure to run `puppet module install puppetlabs-firewall` prior to puppet run

-to initiate puppet run, place nginx module into `/usr/share/puppet/modules`. then run `puppet apply -e 'include nginx'`

-This will run on rhel 6.5

-to display test web page visit `54.87.81.230:8888`

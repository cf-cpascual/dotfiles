alias edebug='sudo php5enmod xdebug;sudo service php5-fpm restart;sudo service nginx restart'
alias ddebug='sudo php5dismod xdebug;sudo service php5-fpm restart;sudo service nginx restart'
alias version='printf "parameters: \n    assets_version: `shuf -i 0-1000000 -n 1` \n    deploy_timestamp: 0" > /vagrant/portal/app/config/version.yml'
alias scripts='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:js;version'
alias styles='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:css;version'
alias frontend='scripts;styles'
alias deploy='cd /vagrant; sh deployPortal.sh'
alias routesa='cd /vagrant/portal;php app/console debug:router'
alias routesb='cd /vagrant/portal;php bin/console debug:router'
alias routesc='cd /vagrant/api;php bin/console debug:router'
alias generate='cd /vagrant/portal;php app/console doctrine:migrations:generate'
alias ll='ls -l'
alias vas='vagrant global-status'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias fixmem='sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024;sudo /sbin/mkswap /var/swap.1;sudo /sbin/swapon /var/swap.1'
alias ccms='fixmem;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/cmsBundle;edebug' 
alias cedma='fixmem;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/edmaBundle;edebug' 
alias cv='cd /vagrant'
alias gcp='git checkout develop;git pull'
alias gm='git merge develop'
alias vln='cd /var/log/nginx/'
alias e='cd /etc/nginx/'

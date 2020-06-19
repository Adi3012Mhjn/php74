ADD file:57b431451a292755d0f13673f5f3bea9f62aea36c7a1b59d34d7d200ba134fea in / 
 CMD ["bash"]

 MAINTAINER Damien Carcel <damien.carcel@akeneo.com>
 ENV DEBIAN_FRONTEND=noninteractive
 /bin/sh -c apt-get update &&     apt-get --no-install-recommends --no-install-suggests --yes --quiet install         apt-transport-https bash-completion ca-certificates curl git gnupg imagemagick         less make mysql-client perceptualdiff procps ssh-client sudo unzip vim wget         ghostscript &&     apt-get clean && apt-get --yes --quiet autoremove --purge &&     rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*             /usr/share/doc/* /usr/share/groff/* /usr/share/info/* /usr/share/linda/*             /usr/share/lintian/* /usr/share/locale/* /usr/share/man/*
 
/bin/sh -c wget -O sury.gpg https://packages.sury.org/php/apt.gpg && apt-key add sury.gpg && rm sury.gpg
COPY file:7bc8fe4b4c09d68cdbd2fe9edd6dcbf209af6c1f2fa80682461bbd2c9ae5e941 in /etc/apt/sources.list.d/sury.list
/bin/sh -c apt-get update &&     apt-get --no-install-recommends --no-install-suggests --yes --quiet install         php7.3-cli php7.3-apcu php7.3-mbstring php7.3-curl php7.3-gd php7.3-imagick php7.3-intl php7.3-bcmath         php7.3-mysql php7.3-xdebug php7.3-xml php7.3-zip php7.3-ldap &&     apt-get clean && apt-get --yes --quiet autoremove --purge &&     rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*             /usr/share/doc/* /usr/share/groff/* /usr/share/info/* /usr/share/linda/*             /usr/share/lintian/* /usr/share/locale/* /usr/share/man/*

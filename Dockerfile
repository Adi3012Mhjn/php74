ADD file:57b431451a292755d0f13673f5f3bea9f62aea36c7a1b59d34d7d200ba134fea in / 
 CMD ["bash"]

 MAINTAINER Damien Carcel <damien.carcel@akeneo.com>
 ENV DEBIAN_FRONTEND=noninteractive
 /bin/sh -c apt-get update &&     apt-get --no-install-recommends --no-install-suggests --yes --quiet install         apt-transport-https bash-completion ca-certificates curl git gnupg imagemagick         less make mysql-client perceptualdiff procps ssh-client sudo unzip vim wget         ghostscript &&     apt-get clean && apt-get --yes --quiet autoremove --purge &&     rm -rf  /var/lib/apt/lists/* /tmp/* /var/tmp/*             /usr/share/doc/* /usr/share/groff/* /usr/share/info/* /usr/share/linda/*             /usr/share/lintian/* /usr/share/locale/* /usr/share/man/*
 

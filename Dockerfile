FROM jenkins/jenkins
USER root
RUN apt-get update && \
      apt-get -y install sudo && \
      apt-get install -y curl && \
      apt-get -y autoclean
RUN   curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
      apt-get install nodejs && \
      npm install -g yarn
RUN   apt-get -y install php && \
      apt-get -y install php-simplexml && \
      curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

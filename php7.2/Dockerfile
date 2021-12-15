FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get install -y software-properties-common vim wget git supervisor

RUN add-apt-repository -y ppa:ondrej/php
RUN apt-get install -y apache2 libapache2-mod-php7.2 mysql-server php7.2 php7.2-mysql
RUN ln -sfn /usr/bin/php7.2 /etc/alternatives/php

RUN apt-get install -y php7.2-dev python3-pip \
    php7.2-curl php7.2-bcmath php7.2-xml php7.2-mbstring \
    php7.2-gd php7.2-zip php7.2-intl

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
ADD apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN sed -ri -e "s/^upload_max_filesize.*/upload_max_filesize = 10M/" /etc/php/7.2/apache2/php.ini
RUN sed -ri -e "s/^post_max_size.*/post_max_size = 10M/" /etc/php/7.2/apache2/php.ini
RUN sed -i "s/display_errors = Off/display_errors = On/g" /etc/php/7.2/apache2/php.ini
RUN sed -i "s/disable_functions/; disable_functions/g" /etc/php/7.2/apache2/php.ini
RUN sed -i "s/;phar.readonly = On/phar.readonly = Off/g" /etc/php/7.2/cli/php.ini
RUN sed -i "s/memory_limit = 128M/memory_limit = -1/g" /etc/php/7.2/cli/php.ini

RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld
RUN echo "[program:mysql]" > /etc/supervisor/conf.d/mysql.conf && \
    echo "#command=/usr/bin/mysqld_safe" >> /etc/supervisor/conf.d/mysql.conf && \
    echo "command=/usr/bin/mysqld_safe" >> /etc/supervisor/conf.d/mysql.conf && \
    echo "process_name = mysql" >> /etc/supervisor/conf.d/mysql.conf && \
    echo "[program:apache]" > /etc/supervisor/conf.d/apache.conf && \
    echo "command=/usr/sbin/apachectl -DFOREGROUND -k start" >> /etc/supervisor/conf.d/apache.conf && \
    echo "process_name = apache" >> /etc/supervisor/conf.d/apache.conf && \
    echo "#!/bin/bash" > /create_user.sh && \
    echo "mysql -uroot -e \"CREATE USER 'admin'@'%' IDENTIFIED BY 'adminpw'\"" >> /create_user.sh && \
    echo "mysql -uroot -e \"GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION\"" >> /create_user.sh && \
    echo "#!/bin/bash" > /start.sh && \
    echo "/usr/bin/supervisord -n" >> /start.sh
RUN chmod 755 /*.sh

RUN git clone --recurse-submodules https://github.com/WSP-LAB/FUGIO.git /FUGIO
ADD benchmarks/ /FUGIO/benchmarks
WORKDIR /FUGIO

# For php7.2
RUN rm install_54.sh install_56.sh run_FUGIO_54.sh run_FUGIO_54_all.sh run_FUGIO_56.sh run_FUGIO_cubecart.sh run_FUGIO_cubecart_all.sh

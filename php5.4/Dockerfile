FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get install -y vim git wget build-essential supervisor
RUN apt-get install -y python3-pip

RUN apt-get install -y apache2 mysql-server
RUN apt-get install -y autoconf apache2-dev libxml2-dev libbz2-dev \
    libcurl4-gnutls-dev libjpeg-dev libpng-dev libmcrypt-dev
RUN ln -s /usr/include/x86_64-linux-gnu/curl /usr/local/include/

RUN wget -O /tmp/bison-2.6.tar.gz http://ftp.gnu.org/gnu/bison/bison-2.6.tar.gz
RUN tar -xvf /tmp/bison-2.6.tar.gz -C /tmp
WORKDIR /tmp/bison-2.6
RUN ./configure --prefix=/usr/local/bison --with-libiconv-prefix=/usr/local/libiconv/
RUN make
RUN make install
RUN ln -s /usr/local/bison/bin/bison /usr/bin/bison

RUN git clone https://github.com/openssl/openssl.git /tmp/openssl
WORKDIR /tmp/openssl
RUN git checkout OpenSSL_1_0_2-stable
RUN ./config shared
RUN make
RUN make install

RUN git clone https://github.com/php/php-src.git /tmp/php-src
WORKDIR /tmp/php-src
RUN git checkout PHP-5.4
RUN ./buildconf
RUN ./configure --with-mysql --with-zlib --with-gd --with-mhash --with-mcrypt \
    --with-curl --with-openssl --with-zlib --with-jpeg-dir --with-png-dir --with-gettext \
    --with-pcre-regex --with-pdo-mysql --enable-calendar --enable-exif --with-bz2 \
    --enable-ftp --enable-mbstring --enable-shmop --enable-soap --enable-bcmath \
    --enable-sockets --enable-wddx --enable-zip --with-mysqli --with-apxs2=/usr/bin/apxs2
RUN make
RUN make install
RUN cp php.ini-production /usr/local/lib/php.ini

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf 
RUN a2dismod mpm_event
RUN a2enmod mpm_prefork
RUN a2enmod php5
RUN a2enmod rewrite

ADD apache_default /etc/apache2/sites-available/000-default.conf 
ADD php.conf /etc/apache2/mods-available/php5.conf
RUN cat /etc/apache2/mods-available/php5.conf >> /etc/apache2/mods-available/php5.load

RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html    

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer  

RUN sed -ri -e "s/^upload_max_filesize.*/upload_max_filesize = 10M/" /usr/local/lib/php.ini
RUN sed -ri -e "s/^post_max_size.*/post_max_size = 10M/" /usr/local/lib/php.ini
RUN sed -i "s/display_errors = Off/display_errors = On/g" /usr/local/lib/php.ini
RUN sed -i "s/memory_limit = 128M/memory_limit = -1/g" /usr/local/lib/php.ini

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

# For php5.4
RUN rm install_56.sh install_72.sh run_FUGIO_56.sh run_FUGIO_72.sh

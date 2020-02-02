FROM php:5-apache
RUN apt-get update \
    && apt-get install -y subversion \
    && docker-php-ext-install mysql mysqli \
    && svn export --force https://github.com/teambi0s/BSides-CTF/trunk/2018/Web/Old-School-SQL/Admin /var/www/html \
    && rm -rf /var/www/html/solution.py \
    && sed -i -e 's/localhost/mysql/' /var/www/html/config.php \
    && sed -i -e 's/localhost/mysql/' /var/www/html/setup.php
FROM strapi/strapi:3.0.1
ENTRYPOINT ["/usr/bin/env"]

WORKDIR /srv/app
#RUN apt-get update
#RUN apt-get install -y apt-utils sudo
ADD updateAll.sh /srv

CMD bash -c './../updateAll.sh'; strapi develop